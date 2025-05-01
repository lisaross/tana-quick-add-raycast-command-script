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
# @raycast.author Manus

# AppleScript commands embedded in the shell script using osascript

# Activate Tana and open Quick Add (Cmd+E)
osascript -e 'tell application "Tana" to activate' \
          -e 'delay 0.2' \
          -e 'tell application "System Events" to keystroke "e" using command down'

# Check if an argument (note text) was provided via Raycast
NOTE_TEXT="$1"

# If note text was provided, wait briefly for Quick Add to open, then paste and save (Cmd+E again)
if [[ -n "$NOTE_TEXT" ]]; then
  sleep 0.5 # Adjust delay if Quick Add takes longer to appear
  # Escape double quotes within the note text for AppleScript
  ESCAPED_NOTE_TEXT=$(echo "$NOTE_TEXT" | sed 's/"/\\"/g')
  osascript -e "tell application \"System Events\" to keystroke \"$ESCAPED_NOTE_TEXT\"" \
            -e 'delay 0.1' \
            -e 'tell application "System Events" to keystroke "e" using command down'
  echo "Note added to Tana Quick Add."
else
  echo "Tana Quick Add opened."
fi

