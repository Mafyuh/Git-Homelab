#!/bin/bash

# Get folder name from command-line argument
folder="$1"
echo "Deploying to folder: $folder"

case $folder in
  arrs)
    host="${{ secrets.ARRS_IP }}"
    ;;
  ag_main)
    host="${{ secrets.AGMAIN_IP }}"
    ;;
  downloaders)
    host="${{ secrets.DOWNLOADERS_IP }}"
    ;;
  # Add cases for other folders/hosts
  *)
    echo "Unknown folder: $folder"
    exit 1
    ;;
esac

echo "Deploying to host: $host"

# SSH command to deploy to the host
ssh -o StrictHostKeyChecking=no mafyuh@$host "cd /Auto-Homelab/$folder && git pull && docker-compose up -d" || echo "Failed to deploy to $host for folder $folder"
