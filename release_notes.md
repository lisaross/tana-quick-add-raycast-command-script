# Tana Quick Add v1.0.0

A Raycast script command that provides quick access to Tana's Quick Add feature from anywhere on your Mac.

## Quick Install

1. First, set up your Script Commands directory in Raycast:
   - Open Raycast Settings
   - Go to Extensions → Script Commands
   - Click "Add Directories" and add `~/.raycast/script-commands`
   
   This ensures Raycast watches the directory for changes and automatically loads new scripts.

2. Download the `Tana Quick Add.sh` file from this release
3. Move it to your Raycast Script Commands directory:
   ```bash
   # Create the Scripts directory if it doesn't exist
   mkdir -p ~/.raycast/script-commands
   
   # Make the script executable and move it
   chmod +x ~/Downloads/Tana\ Quick\ Add.sh
   mv ~/Downloads/Tana\ Quick\ Add.sh ~/.raycast/script-commands/
   ```

The command will appear in Raycast automatically once the file is in place, as the directory is being watched for changes.

## Features

- Global keyboard shortcut access to Tana's Quick Add
- Direct text input from Raycast
- Automatic activation of Tana
- Works consistently whether Tana is active or not
- Special character support

## Optional: Set Up a Keyboard Shortcut

1. Open Raycast Preferences
2. Go to Extensions → Script Commands
3. Find 'Tana Quick Add'
4. Click the keyboard shortcut field
5. Press your desired shortcut combination

## Requirements

- [Tana](https://tana.inc/) installed on your Mac
- [Raycast](https://www.raycast.com/) installed on your Mac
- macOS (tested on macOS 12.0 and later)

See the [full README](https://github.com/lisaross/tana-quick-add-raycast-command-script) for more details and troubleshooting. 