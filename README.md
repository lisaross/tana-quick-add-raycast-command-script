# Tana Quick Add Raycast Command

A Raycast script command that provides quick access to Tana's Quick Add feature, allowing you to add notes to Tana directly from Raycast.

## Overview

This script enhances your Tana workflow by providing a global keyboard shortcut to open Tana's Quick Add feature. It can be used to either open Quick Add for manual input or directly add text from Raycast.

## Prerequisites

- [Tana](https://tana.inc/) installed on your Mac
- [Raycast](https://www.raycast.com/) installed on your Mac
- macOS (tested on macOS 12.0 and later)

## Installation

1. Download or clone this repository
2. Open Raycast
3. Go to Script Commands
4. Click the "+" button to add a new script
5. Select "Import Script"
6. Choose the `Tana Quick Add.sh` file from this repository
7. Configure the script with the following settings:
   - Title: "Tana Quick Add"
   - Package Name: "Tana Utilities"
   - Mode: "Compact"
   - Icon: "Tana" (or your preferred icon)

## Keyboard Shortcut

You can set up a custom keyboard shortcut for quick access to this command:

1. Open Raycast Preferences
2. Go to "Extensions" → "Script Commands"
3. Find "Tana Quick Add" in the list
4. Click on the keyboard shortcut field
5. Press your desired shortcut combination (e.g., `Caps Lock +`)

This will allow you to trigger the Tana Quick Add command directly with your chosen shortcut, bypassing the need to open Raycast first.

## Usage

### Basic Usage

1. Open Raycast (default shortcut: `⌘ + Space`)
2. Type "Tana Quick Add"
3. Press Enter to open Tana's Quick Add feature

### Quick Add with Text

1. Open Raycast
2. Type "Tana Quick Add"
3. Type your note text
4. Press Enter to add the note directly to Tana

## Features

- Global keyboard shortcut access to Tana's Quick Add
- Direct text input from Raycast
- Automatic activation of Tana
- Quick Add shortcut simulation (Cmd+E)
- Text escaping for special characters

## Troubleshooting

### Common Issues

1. **Quick Add doesn't open**
   - Ensure Tana is running
   - Check if the script has the correct permissions
   - Verify that the Cmd+E shortcut works in Tana

2. **Text not being added**
   - Try increasing the delay in the script (currently set to 0.5 seconds)
   - Check if Tana is responding to keyboard input

3. **Special characters not working**
   - The script automatically escapes special characters, but some may still cause issues
   - Try using plain text if you encounter problems

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is open source and available under the [MIT License](LICENSE).

## Acknowledgments

- [Tana](https://tana.inc/) for creating an amazing note-taking application
- [Raycast](https://www.raycast.com/) for providing a powerful automation platform 