#!/bin/bash

# Raycast Script Command Template
#
# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Tana Quick Add
# @raycast.mode compact
# @raycast.packageName Tana Utilities
#
# Optional parameters:
# @raycast.icon  Tana # Or choose a suitable icon
# @raycast.argument1 { "type": "text", "placeholder": "Add to Tana...", "optional": true }
#
# Documentation:
# @raycast.description Opens Tana Quick Add globally, optionally adding text directly.
# @raycast.author Lisa Ross
# @raycast.authorURL https://makably.com

# AppleScript commands embedded in the shell script using osascript

# Force focus to Tana and send the command
osascript <<EOD
-- First, activate Finder briefly to force Raycast to lose focus
-- This is crucial to prevent the Cmd+E from being captured by Raycast
tell application "Finder" to activate
delay 0.1

-- Now activate Tana and ensure it's ready
tell application "Tana" to activate
delay 0.3

-- Send the Quick Add command to Tana
tell application "System Events"
    tell process "Tana"
        set frontmost to true
        delay 0.1
        keystroke "e" using command down
    end tell
end tell
EOD

# Check if an argument (note text) was provided via Raycast
NOTE_TEXT="$1"

# If note text was provided, wait briefly for Quick Add to open, then paste and save (Cmd+E again)
if [[ -n "$NOTE_TEXT" ]]; then
    sleep 0.3 # Adjust delay if Quick Add takes longer to appear
    # Escape double quotes within the note text for AppleScript
    ESCAPED_NOTE_TEXT=$(echo "$NOTE_TEXT" | sed 's/"/\\"/g')
    osascript <<EOD
tell application "System Events"
    tell process "Tana"
        keystroke "$ESCAPED_NOTE_TEXT"
        delay 0.1
        keystroke "e" using command down
    end tell
end tell
EOD
    echo "Note added to Tana Quick Add."
else
    echo "Tana Quick Add opened."
fi

