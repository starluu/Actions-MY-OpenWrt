qbittorrent-nox_repo=$(curl -s https://api.github.com/repos/userdocs/qbittorrent-nox-static/releases/latest | grep "browser_download_url.*x86_64-qbittorrent-nox" | cut -d '"' -f 4)
wget ${qbittorrent-nox_repo}
