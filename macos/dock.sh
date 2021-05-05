#!/bin/sh
OVERRIDE_MACOS_PATH=$DOTFILES_DIR/custom/macos

if [[ -z $OVERRIDE_MACOS_PATH || -d $OVERRIDE_MACOS_PATH ]]
then
    exec $OVERRIDE_MACOS_PATH/dock.sh
else
    dockutil --no-restart --remove all
    dockutil --no-restart --add "/Applications/Firefox.app"
    dockutil --no-restart --add "/System/Applications/Mail.app"
    dockutil --no-restart --add "/Applications/Signal.app"
    dockutil --no-restart --add "/System/Applications/Calendar.app"
    dockutil --no-restart --add "/System/Applications/Notes.app"
    dockutil --no-restart --add "/System/Applications/Reminders.app"
    dockutil --no-restart --add "/Applications/iTerm.app"
    dockutil --add '~/Downloads' --view grid --display folder --allhomes
fi

killall Dock