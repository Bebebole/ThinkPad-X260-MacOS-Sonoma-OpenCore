SCRIPT_PATH="${BASH_SOURCE[0]%/*}"

#Change screen color profile
DISPLAY_PROFILE_PATH="$(ls /Library/ColorSync/Profiles/Displays/** | grep "Nameless Display" | head -1)"
$SCRIPT_PATH/customdisplayprofiles-intel set "$DISPLAY_PROFILE_PATH"

#Adjust Launchpad icons size
defaults write com.apple.dock springboard-columns -int 6
defaults write com.apple.dock springboard-rows -int 4
killall Dock