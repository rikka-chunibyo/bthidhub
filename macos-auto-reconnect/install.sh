sudo rm -rf "/Library/LaunchDaemons/com.system.bthidhub-reconnect.plist"
sudo rm -rf "/Library/Startup Scripts/bthidhub-reconnect.sh"
sudo mkdir "/Library/Startup Scripts"

sudo curl "https://raw.githubusercontent.com/rikka-chunibyo/bthidhub/refs/heads/main/macos-auto-reconnect/Library/LaunchDaemons/com.rikka.bthidhub-reconnect.plist" -o "/Library/LaunchDaemons/com.system.bthidhub-reconnect.plist"
sudo curl "https://raw.githubusercontent.com/rikka-chunibyo/bthidhub/refs/heads/main/macos-auto-reconnect/Library/Startup%20Scripts/bthidhub-reconnect.sh" -o "/Library/Startup Scripts/bthidhub-reconnect.sh"

sudo chown root:wheel "/Library/LaunchDaemons/com.system.bthidhub-reconnect.plist"
sudo chmod 644 "/Library/LaunchDaemons/com.system.bthidhub-reconnect.plist"
sudo chmod +x "/Library/Startup Scripts/bthidhub-reconnect.sh"

sudo launchctl load system "/Library/LaunchDaemons/com.system.bthidhub-reconnect.plist" # this gives an error but it might still work, unless it doesn't go on startup? idk I'll figure it out later
sudo launchctl enable "system/com.rikka.bthidhub-reconnect"
sudo launchctl start "system/com.rikka.bthidhub-reconnect"
