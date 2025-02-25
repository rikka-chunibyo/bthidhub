sudo curl "https://raw.githubusercontent.com/rikka-chunibyo/bthidhub/refs/heads/main/macos-auto-reconnect/Library/LaunchDaemons/com.rikka.bthidhub-reconnect.plist" -o "/Library/LaunchDaemons/com.rikka.bthidhub-reconnect.plist"
sudo curl "https://raw.githubusercontent.com/rikka-chunibyo/bthidhub/refs/heads/main/macos-auto-reconnect/Library/Startup%20Scripts/bthidhud-reconnect.sh" -o "/Library/Startup Scripts/bthidhub-reconnect.sh"

sudo launchctl load "/Library/LaunchDaemons/com.rikka.bthidhub-reconnect.plist"
sudo launchctl enable "system/com.rikka.bthidhub-reconnect"
sudo launchctl start "system/com.rikka.bthidhub-reconnect"
