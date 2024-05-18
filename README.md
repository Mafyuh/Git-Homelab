# Auto-Homelab
Homelab docker-compose environment defined in code. Using Drone and Renovate bot for CI along with bash scripts for CD. Very much still a WIP.

## Apps in Repo:
<table>
    <tr>
        <th>Logo</th>
        <th>Name</th>
        <th>Description</th>
    </tr>
    <tr>
        <td><img vertical-align=baseline width="32" src="https://avatars.githubusercontent.com/u/99494700?s=200&v=4"></td>
        <td><a href="https://github.com/activepieces/activepieces">ActivePieces</a></td>
        <td>Selfhosted Zapier/n8n alternative </td>
    </tr>
    <tr>
        <td><img vertical-align=baseline width="32" src="https://raw.githubusercontent.com/Mafyuh/homelab-svg-assets/main/assets/authentik.svg"></td>
        <td><a href="https://goauthentik.io/">authentik</a></td>
        <td>Open Source Identity Provider </td>
    </tr>
    <tr>
        <td><img vertical-align=baseline width="32" src="https://raw.githubusercontent.com/Mafyuh/homelab-svg-assets/main/assets/bazarr.svg"></td>
        <td><a href="https://www.bazarr.media/">Bazarr</a></td>
        <td>Downloads subtitles for Radarr/Sonarr</td>
    </tr>
    <tr>
        <td><img vertical-align=baseline width="32" src="https://raw.githubusercontent.com/Mafyuh/homelab-svg-assets/main/assets/cloudflare.svg"></td>
        <td><a href="https://www.cloudflare.com/products/tunnel/">Cloudflare Tunnels</a></td>
        <td>How I expose some of these services</td>
    </tr>
    <tr>
        <td><img vertical-align=baseline width="32" src="https://raw.githubusercontent.com/kiranshila/Doplarr/main/logos/logo.svg"></td>
        <td><a href="https://github.com/kiranshila/Doplarr">Doplarr</a></td>
        <td>Allows my users to request content through Discord if they choose</td>
    </tr>
    <tr>
        <td><img vertical-align=baseline width="32" src="https://raw.githubusercontent.com/Mafyuh/homelab-svg-assets/main/assets/droneci.svg"></td>
        <td><a href="https://www.drone.io/">Drone</a></td>
        <td>Selfhosted CI/CD pipeline manager</td>
    </tr>
    <tr>
        <td><img vertical-align=baseline width="32" src="https://raw.githubusercontent.com/FlareSolverr/FlareSolverr/master/resources/flaresolverr_logo.svg"></td>
        <td><a href="https://github.com/FlareSolverr/FlareSolverr">FlareSolverr</a></td>
        <td>Proxy server to bypass Cloudflare and DDoS-GUARD protection</td>
    </tr>
    <tr>
        <td><img vertical-align=baseline width="32" src="https://raw.githubusercontent.com/Mafyuh/homelab-svg-assets/main/assets/forgejo.svg"></td>
        <td><a href="https://forgejo.org/">Forgejo</a></td>
        <td>This site</td>
    </tr>
    <tr>
        <td><img vertical-align=baseline width="32" src="https://raw.githubusercontent.com/Mafyuh/homelab-svg-assets/main/assets/gotify.svg"></td>
        <td><a href="https://gotify.net/">Gotfiy</a></td>
        <td>Self hosted notification service</td>
    </tr>
    <tr>
        <td><img vertical-align=baseline width="32" src="https://raw.githubusercontent.com/Mafyuh/homelab-svg-assets/main/assets/homarr.svg"></td>
        <td><a href="https://homarr.dev/docs/getting-started/installation/">Homarr</a></td>
        <td>Homelab dashboard that integrates with the arr's so I see data in 1 place</td>
    </tr>
    <tr>
        <td><img vertical-align=baseline width="32" src="https://raw.githubusercontent.com/Mafyuh/homelab-svg-assets/main/assets/jellyfin.svg"></td>
        <td><a href="https://github.com/jellyfin/jellyfin">Jellyfin</a></td>
        <td>Open Source Streaming Service for home media like Plex</td>
    </tr>
    <tr>
        <td><img vertical-align=baseline width="32" src="https://raw.githubusercontent.com/Mafyuh/homelab-svg-assets/main/assets/jellyseerr.svg"></td>
        <td><a href="https://github.com/Fallenbagel/jellyseerr">Jellyseerr</a></td>
        <td>Request platform for my Jellyfin user's to request content</a></td>
    </tr>
    <tr>
        <td><img vertical-align=baseline width="32" src="https://raw.githubusercontent.com/Mafyuh/homelab-svg-assets/main/assets/docker.svg"></td>
        <td><a href="https://github.com/hrfee/jfa-go">jfa-go</a></td>
        <td>Used for some PPV/Live TV automations to create users for certain periods of time</td>
    </tr>
    <tr>
        <td><img vertical-align=baseline width="32" src="https://raw.githubusercontent.com/Mafyuh/homelab-svg-assets/main/assets/kasm.svg"></td>
        <td><a href="https://docs.linuxserver.io/images/docker-kasm/">Kasm</a></td>
        <td>Docker container streaming platform for browser-based access to desktops, applications, and web services</a></td>
    </tr>
    <tr>
        <td><img vertical-align=baseline width="32" src="https://raw.githubusercontent.com/Mafyuh/homelab-svg-assets/main/assets/lidarr.svg"></td>
        <td><a href="https://wiki.servarr.com/en/lidarr">Lidarr</a></td>
        <td>Music Collection Manager</td>
    </tr>
    <tr>
        <td><img vertical-align=baseline width="32" src="https://raw.githubusercontent.com/LinkStackOrg/branding/main/logo/svg/logo_animated.svg"></td>
        <td><a href="https://github.com/LinkStackOrg/linkstack-docker">LinkStack</a></td>
        <td>Creating a static links page for my Jellyfin users</td>
    </tr>
    <tr>
        <td><img vertical-align=baseline width="32" src="https://res.cloudinary.com/canonical/image/fetch/f_auto,q_auto,fl_sanitize,w_60,h_60/https://dashboard.snapcraft.io/site_media/appmedia/2020/03/makemkv.png"></td>
        <td><a href="https://github.com/jlesage/docker-makemkv">MakeMKV</a></td>
        <td>Used to rip Bluray's with my LG BU40N drive </td>
    </tr>
    <tr>
        <td><img vertical-align=baseline width="32" src="https://avatars.githubusercontent.com/u/31035808?s=200&v=4"></td>
        <td><a href="https://docs.mindsdb.com/what-is-mindsdb">mindsdb</a></td>
        <td>Connects Ollama models to 100+ different databases, easy to use.</td>
    </tr>
    <tr>
        <td><img vertical-align=baseline width="32" src="https://raw.githubusercontent.com/Mafyuh/homelab-svg-assets/main/assets/nginxproxymanager.svg"></td>
        <td><a href="https://nginxproxymanager.com/">Nginx Proxy Manager</a></td>
        <td>Reverse Proxy used for its simplicity (1/3)</td>
    </tr>
    <tr>
        <td><img vertical-align=baseline width="32" src="https://raw.githubusercontent.com/Mafyuh/homelab-svg-assets/main/assets/n8n.svg"></td>
        <td><a href="https://n8n.io">n8n</a></td>
        <td>Switching from ActivePieces to n8n, more robust</td>
    </tr>
    <tr>
        <td><img vertical-align=baseline width="32" src="https://ollama.com/public/ollama.png"></td>
        <td><a href="https://ollama.com/">Ollama</a></td>
        <td>Easiest way to run LLM's on your own hardware</td>
    </tr>
    <tr>
        <td><img vertical-align=baseline width="32" src="https://github.com/open-webui/open-webui/blob/main/static/favicon.png?raw=true"></td>
        <td><a href="https://github.com/open-webui/open-webui">open-webui</a></td>
        <td>Creates a ChatGPT like web interface for talking to Ollama models</td>
    </tr>
    <tr>
        <td><img vertical-align=baseline width="32" src="https://raw.githubusercontent.com/Mafyuh/homelab-svg-assets/main/assets/portainer.svg"></td>
        <td><a href="https://github.com/portainer/portainer">Portainer</a></td>
        <td>Web-based management for Docker containers</td>
    </tr>
    <tr>
        <td><img vertical-align=baseline width="32" src="https://raw.githubusercontent.com/Mafyuh/homelab-svg-assets/main/assets/prowlarr.svg"></td>
        <td><a href="https://prowlarr.com/">Prowlarr</a></td>
        <td>Searches indexers for Radarr/Sonarr</td>
    </tr>
    <tr>
        <td><img vertical-align=baseline width="32" src="https://raw.githubusercontent.com/Mafyuh/homelab-svg-assets/main/assets/qbittorrent.svg"></td>
        <td><a href="https://github.com/binhex/arch-qbittorrentvpn">qBittorrent VPN</a></td>
        <td>Modified qBittorrent with VPN killswitch enabled</td>
    </tr>
    <tr>
        <td><img vertical-align=baseline width="32" src="https://raw.githubusercontent.com/Mafyuh/homelab-svg-assets/main/assets/radarr.svg"></td>
        <td><a href="https://radarr.video/">Radarr</a></td>
        <td>Movie Collection Manager</td>
    </tr>
    <tr>
        <td><img vertical-align=baseline width="32" src="https://raw.githubusercontent.com/Mafyuh/homelab-svg-assets/main/assets/sabnzbd.svg"></td>
        <td><a href="https://sabnzbd.org/">Sabnzbd</a></td>
        <td>Usenet downloader to download content</td>
    </tr>
    <tr>
        <td><img vertical-align=baseline width="32" src="https://raw.githubusercontent.com/Mafyuh/homelab-svg-assets/main/assets/sonarr.svg"></td>
        <td><a href="https://wiki.servarr.com/sonarr">Sonarr</a></td>
        <td>Radarr, but for TV Shows</td>
    </tr>
    <tr>
        <td><img vertical-align=baseline width="32" src="https://www.gravatar.com/avatar/614e0f6491dbb293e540190b02b3024e?s=120&r=g&d=404"></td>
        <td><a href="https://hub.docker.com/r/sonatype/nexus3/">Sonatype Nexus</a></td>
        <td>Self-hosted Docker registry to help lower Docker pulls</td>
    </tr>
    <tr>
        <td><img vertical-align=baseline width="32" src="https://play-lh.googleusercontent.com/GBhNhKgjfy6i6Ucc0hyB-79WmcV7LvKSfGSy8iStFdZSaLioKQp5rPWjqsh2YFRRZsE1"></td>
        <td><a href="https://twingate.com">Twingate Connectors</a></td>
        <td>Main VPN between homelab and cloud VPS's</td>
    </tr>
    <tr>
        <td><img vertical-align=baseline width="32" src="https://raw.githubusercontent.com/Mafyuh/homelab-svg-assets/main/assets/uptimekuma.svg"></td>
        <td><a href="https://github.com/louislam/uptime-kuma">Uptime Kuma</a></td>
        <td>Self hosted service uptime tracker</td>
    </tr>
</table>

## Apps not yet in repo:
<table>
    <tr>
        <th>Logo</th>
        <th>Name</th>
        <th>Description</th>
    </tr>
    <tr>
        <td><img vertical-align=baseline width="32" src="https://raw.githubusercontent.com/Mafyuh/homelab-svg-assets/main/assets/grafana.svg"></td>
        <td><a href="https://hub.docker.com/r/grafana/grafana-oss">Grafana</a></td>
        <td>Monitoring for various services</td>
    </tr>
    <tr>
        <td><img vertical-align=baseline width="32" src="https://raw.githubusercontent.com/Mafyuh/homelab-svg-assets/main/assets/wordpress.svg"></td>
        <td><a href="https://wordpress.org/">Wordpress</a></td>
        <td>WooCommerce store setup for JF PPV access</td>
    </tr>
    <tr>
        <td><img vertical-align=baseline width="32" src="https://upload.wikimedia.org/wikipedia/commons/3/31/Apache_Guacamole_logo.png"></td>
        <td><a href="https://guacamole.apache.org/">Guacamole</a></td>
        <td>Remote access in browser via SSH, RDP, VNC, etc</td>
    </tr>
    <tr>
        <td><img vertical-align=baseline width="32" src="https://raw.githubusercontent.com/Mafyuh/homelab-svg-assets/main/assets/homeassistant.svg"></td>
        <td><a href="https://www.home-assistant.io/">Home Assistant</a></td>
        <td>Slowly migrating over to Home Assistant from Google Home</td>
    </tr>
    <tr>
        <td><img vertical-align=baseline width="32" src="https://raw.githubusercontent.com/Mafyuh/homelab-svg-assets/main/assets/adguardhome.svg"></td>
        <td><a href="https://adguard.com/en/adguard-home/overview.html">AdGuard Home</a></td>
        <td>Network Wide DNS adblock as well as my DNS server</td>
    </tr>
    <tr>
        <td><img vertical-align=baseline width="32" src="https://raw.githubusercontent.com/Mafyuh/homelab-svg-assets/main/assets/plausible.svg"></td>
        <td><a href="https://plausible.io/">Plausible</a></td>
        <td>Analytics tracker for certain websites (Blog)</td>
    </tr>
</table>


### Hypervisor: 
[![Proxmox](https://img.shields.io/badge/-Proxmox-%23c9d1d9?logo=Proxmox)](https://www.proxmox.com)

### OS:
[![Ubuntu](https://img.shields.io/badge/Ubuntu_22.04-%23c9d1d9?&logo=ubuntu&logoColor=red)](https://releases.ubuntu.com/jammy/)


### Tools:
[![Forgejo](https://img.shields.io/badge/-Forgejo-%23c9d1d9?logo=forgejo&logoColor=orange)](https://forgejo.org/)
[![Drone](https://img.shields.io/badge/-Drone-%23c9d1d9?logo=drone&logoColor=black)](https://www.drone.io/)
[![Docker](https://img.shields.io/badge/-Docker-%23c9d1d9?logo=docker)](https://www.docker.com/)

### VPS (arm)
[![Oracle](https://img.shields.io/badge/-Oracle_Cloud-%23c9d1d9?logo=oracle&logoColor=red)](https://www.oracle.com/cloud/)

## To-Do

- [] Get all dependencies configured to pull changelogs on PR
- [] CI Passing Badge in README
- [] Add README to each directory
- [x] Get upstream release notes for linuxserver containers