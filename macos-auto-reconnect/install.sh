sudo rm -rf "/Library/Startup Scripts/bthidhub-reconnect.sh"
sudo mkdir "/Library/Startup Scripts"

sudo curl "https://raw.githubusercontent.com/rikka-chunibyo/bthidhub/refs/heads/main/macos-auto-reconnect/Library/LaunchDaemons/com.rikka.bthidhub-reconnect.plist" -o "/Library/LaunchDaemons/com.system.bthidhub-reconnect.plist"
sudo curl "https://raw.githubusercontent.com/rikka-chunibyo/bthidhub/refs/heads/main/macos-auto-reconnect/Library/Startup%20Scripts/bthidhub-reconnect.sh" -o "/Library/Startup Scripts/bthidhub-reconnect.sh"

sudo chmod +x "/Library/Startup Scripts/bthidhub-reconnect.sh"

(crontab -l 2>/dev/null; echo "@reboot /Library/Startup\\ Scripts/bthidhub-reconnect.sh") | crontab -
