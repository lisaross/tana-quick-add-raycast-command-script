## Description

The Tana Quick Add Raycast command doesn't work as expected when the Tana app is already active. Instead of opening the Quick Add interface, it triggers an edit action on the top Raycast command.

## Current Behavior

1. When Tana app is already active/focused:
   - Running the Quick Add command (Cmd+E) triggers an edit action on the Raycast command itself
   - The Quick Add interface does not appear as expected
   - This effectively breaks the core functionality when working within Tana

2. When Tana app is not active:
   - The command works as expected
   - Tana app is activated
   - Quick Add interface appears correctly

## Expected Behavior

The Quick Add command should:
- Open the Quick Add interface consistently regardless of whether Tana is already active or not
- Not interfere with Raycast's command editing functionality
- Maintain the same behavior across all application states

## Steps to Reproduce

1. Open Tana app and ensure it's the active window
2. Trigger the Tana Quick Add command from Raycast
3. Observe that instead of opening Quick Add, it triggers an edit on the Raycast command

## Environment

- OS: macOS 24.4.0
- App: Tana
- Command: Tana Quick Add Raycast script

## Acceptance Criteria

- [ ] Quick Add command works consistently whether Tana is active or not
- [ ] Command does not interfere with Raycast's command editing functionality
- [ ] If Tana is already active, the Quick Add interface still appears as expected
- [ ] Existing functionality for when Tana is not active remains unchanged

## Additional Context

This appears to be an interaction issue between Raycast's command handling and Tana's active state. The current implementation may need to be modified to handle the active state differently or use a different approach for triggering Quick Add when Tana is already focused. 