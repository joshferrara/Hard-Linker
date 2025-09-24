# Hard Linker

A native macOS application for creating hard links between folders using the `cp -al` command. Built with SwiftUI and packaged as a complete .app bundle.

![Hard Linker App Icon](Icon-iOS-Default-1024x1024@1x.png)

## Features

- **Drag & Drop Interface**: Simply drag folders into the app or use the file picker
- **Multiple Source Folders**: Link multiple source folders to one destination
- **Visual Feedback**: Real-time status updates and progress indicators
- **Error Handling**: Clear error messages if operations fail
- **Native macOS Design**: Built with SwiftUI for a modern, native experience

## What are Hard Links?

Hard links are references to the same data on disk. Unlike symbolic links, hard links:
- Don't break if the original file is moved or deleted
- Take up minimal additional disk space
- Appear as regular files/folders in Finder
- Are perfect for creating multiple access points to the same data

This app uses the `cp -al` command which creates hard links for all files in the source directory structure.

## Requirements

- macOS 13.0 or later
- Admin privileges may be required for some file operations

## Installation

### Option 1: Download Release
1. Download the latest `Hard Linker.app` from the releases page
2. Move it to your Applications folder
3. Right-click and select "Open" the first time to bypass Gatekeeper

### Option 2: Build from Source
1. Clone this repository
2. Open Terminal in the project directory
3. Run `swift build -c release`
4. The built app is included in the repository as `Hard Linker.app`

## Usage

1. Launch Hard Linker
2. **Add Source Folders**:
   - Drag folders into the "Source Folders" area, or
   - Click the area and select folders using the file picker
3. **Set Destination**:
   - Drag a destination folder into the "Destination Folder" area, or
   - Click the area and select a destination folder
4. **Create Links**: Click "Create Hard Links" to start the process
5. **Monitor Progress**: Watch the status messages for completion or errors

## How It Works

The app executes `cp -al <source> <destination>` for each source folder:
- `-a` preserves file attributes and permissions
- `-l` creates hard links instead of copying data

This creates a complete directory structure in the destination with hard links to all files from the source.

## Use Cases

- **Backup Solutions**: Create space-efficient backups
- **Development**: Link project folders for different access points
- **Media Organization**: Create multiple organizational structures for the same files
- **Testing**: Create test environments without duplicating large datasets

## Technical Details

- **Language**: Swift 5.9+
- **Framework**: SwiftUI
- **Target**: macOS 13.0+
- **Architecture**: Universal (Apple Silicon + Intel)

## Project Structure

```
Hard Linker/
├── Package.swift              # Swift Package Manager configuration
├── Sources/
│   └── HardLinkCreator/
│       └── HardLinkCreator.swift  # Main application code
├── AppIcon.iconset/           # Source icon files
├── AppIcon.icns              # Compiled app icon
└── Hard Linker.app/          # Complete app bundle
    ├── Contents/
    │   ├── Info.plist        # App metadata
    │   ├── MacOS/
    │   │   └── Hard Linker   # Executable
    │   └── Resources/
    │       └── AppIcon.icns  # App icon
```

## Development

To modify or extend the app:

1. Edit `Sources/HardLinkCreator/HardLinkCreator.swift`
2. Build with `swift build -c release`
3. Update the app bundle: `cp .build/release/HardLinkCreator "Hard Linker.app/Contents/MacOS/Hard Linker"`

## License

Copyright © 2025 Josh Ferrara. All rights reserved.

## Contributing

Feel free to open issues or submit pull requests to improve the app!