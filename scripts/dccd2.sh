#!/bin/bash

########################################
# Default configuration values
########################################
BASE_DIR=""                     # Initialize empty variable
LOG_FILE="/tmp/dccd.log"        # Default log file name
PRUNE=0                         # Default prune setting
REMOTE_BRANCH="main"            # Default remote branch name
NOTIFY_URL="$GOTIFY_BASE_URL/message"  # Gotify server URL
NOTIFY_TOKEN="$GOTIFY_TOKEN"  # Gotify app token

########################################
# Functions
########################################
log_message() {
    local message="$1"
    echo "$(date +'%Y-%m-%d %H:%M:%S') - $message" | tee -a "$LOG_FILE"
}

send_notification() {
    local title="$1"
    local message="$2"

    curl -X POST "$NOTIFY_URL?token=$NOTIFY_TOKEN" -F "title=$title" -F "message=$message"
}

update_compose_files() {
    local dir="$1"
    local folder_pattern="$2"

    cd "$dir" || { log_message "ERROR: Directory doesn't exist, exiting..."; send_notification "Script Error" "Failed to update compose files: Directory doesn't exist"; exit 127; }

    # Make sure we're in a git repo
    if [ ! -d .git ]; then
        log_message "ERROR: Directory is not a git repository, exiting..."
        send_notification "Script Error" "Failed to update compose files: Directory is not a git repository"
        exit 1
    else
        log_message "INFO:  Git repository found!"
    fi

    # Check if there are any changes in the Git repository
    if ! git fetch origin; then
        log_message "ERROR: Unable to fetch changes from the remote repository (the server may be offline or unreachable)"
        send_notification "Script Error" "Failed to update compose files: Unable to fetch changes from the remote repository (the server may be offline or unreachable)"
        exit 1
    fi

    local_hash=$(git rev-parse HEAD)
    remote_hash=$(git rev-parse "origin/$REMOTE_BRANCH")
    log_message "INFO:  Local hash is  $local_hash"
    log_message "INFO:  Remote hash is $remote_hash"

    # Check for uncommitted local changes
    uncommitted_changes=$(git status --porcelain)
    if [ -n "$uncommitted_changes" ]; then
        log_message "ERROR: Uncommitted changes detected in $dir, exiting..."
        send_notification "Script Error" "Failed to update compose files: Uncommitted changes detected in $dir"
        exit 1
    fi

    # Check if the local hash matches the remote hash
    if [ "$local_hash" != "$remote_hash" ]; then
        log_message "STATE: Hashes don't match, checking for relevant changes..."

    # Get the list of changed files
    changed_files=$(git diff --name-only "origin/$REMOTE_BRANCH")

    # Loop through directories matching the specified pattern
    find "$dir" -type d -name "$folder_pattern" | while IFS= read -r folder; do
        log_message "INFO: Found folder matching pattern: $folder"

        # If EXCLUDE is set and the directory matches the exclude pattern, skip
        if [ -n "$EXCLUDE" ] && [[ "$folder" == *"$EXCLUDE"* ]]; then
            log_message "INFO: Excluding directory $folder"
            continue
        fi

        # Check if the docker-compose.yml file in this folder has changed
        compose_file_changed=false
        for file in $changed_files; do
            log_message "DEBUG: Comparing changed file: $file"  # Added debug line
            log_message "DEBUG: With target file: $folder/docker-compose.yml"  # Added debug line
            log_message "DEBUG: Length of changed file: ${#file}"
            log_message "DEBUG: Length of target file: ${#folder/docker-compose.yml}"
            if [[ "$file" == "$folder/docker-compose.yml" ]]; then
                compose_file_changed=true
                break
            fi
        done

            if $compose_file_changed; then
                # Go into the directory
                cd "$folder" || { log_message "ERROR: Failed to enter directory $folder"; send_notification "Script Error" "Failed to update compose files: Failed to enter directory $folder"; continue; }

                # Redeploy compose file in this directory
                log_message "STATE: Redeploying compose file in directory: $folder"
                docker compose up -d --quiet-pull

                # Go back to the original directory
                cd "$dir" || { log_message "ERROR: Failed to return to directory $dir"; send_notification "Script Error" "Failed to update compose files: Failed to return to directory $dir"; exit 1; }
            else
                log_message "INFO: No changes detected in docker-compose.yml for $folder, skipping..."
            fi
        done
    else
        log_message "STATE: Hashes match, so nothing to do"
    fi

    # Check if PRUNE is provided
    if [ $PRUNE -eq 1 ]; then
        log_message "STATE: Pruning images"
        docker image prune --all --force
    fi

    log_message "STATE: Done!"
}

usage() {
    printf "
    Usage: $0 [OPTIONS]

    Options:
      -b <name>       Specify the remote branch to track (default: main)
      -d <path>       Specify the base directory of the git repository (required)
      -h              Show this help message
      -l <path>       Specify the path to the log file (default: /tmp/dccd.log)
      -p              Specify if you want to prune docker images (default: don't prune)
      -x <path>       Exclude directories matching the specified pattern (relative to the base directory)
      -f <pattern>    Specify the pattern for folder names to match

    Example: $0 -b master -d /path/to/git_repo -l /tmp/dccd.txt -p -f 'arrs'

"
    exit 1
}

########################################
# Options
########################################

while getopts ":b:d:hl:px:f:" opt; do
    case "$opt" in
        b)
            REMOTE_BRANCH="$OPTARG"
            ;;
        d)
            BASE_DIR="$OPTARG"
            ;;
        h)
            usage
            ;;
        l)
            LOG_FILE="$OPTARG"
            ;;
        p)
            PRUNE=1
            ;;
        x)
            EXCLUDE="$OPTARG"
            ;;
        f)
            FOLDER_PATTERN="$OPTARG"
            ;;
        \?)
            echo "Invalid option: -$OPTARG" >&2
            usage
            ;;
        :)
            echo "Option -$OPTARG requires an argument." >&2
            usage
            ;;
    esac
done

########################################
# Script starts here
########################################

touch "$LOG_FILE"
{
  echo "########################################"
  echo "# Starting!"
  echo "########################################"
} >> "$LOG_FILE"

# Check if BASE_DIR is provided
if [ -z "$BASE_DIR" ]; then
    log_message "ERROR: The base directory (-d) is required, exiting..."
    send_notification "Script Error" "Failed to update compose files: Base directory (-d) is required"
    usage
else 
    log_message "INFO:  Base directory is set to $BASE_DIR"
fi

# Check if REMOTE_BRANCH is provided
if [ -z "$REMOTE_BRANCH" ]; then
    log_message "INFO:  The remote branch isn't specified, so using $REMOTE_BRANCH"
else
    log_message "INFO:  The remote branch is set to $REMOTE_BRANCH"
fi

# Check if EXCLUDE is provided
if [ -n "$EXCLUDE" ]; then
    log_message "INFO:  Will be excluding pattern $EXCLUDE"
fi

# Check if FOLDER_PATTERN is provided
if [ -z "$FOLDER_PATTERN" ]; then
    log_message "ERROR: The folder pattern (-f) is required, exiting..."
    send_notification "Script Error" "Failed to update compose files: Folder pattern (-f) is required"
    usage
else
    log_message "INFO:  Folder pattern is set to $FOLDER_PATTERN"
fi

update_compose_files "$BASE_DIR" "$FOLDER_PATTERN"