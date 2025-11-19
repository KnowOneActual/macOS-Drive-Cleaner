# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).


## [1.0.0] - 2025-11-18

### Added
- Initial release of the **macOS-Drive-Cleaner** project.
- Added `clean_drive.sh`: A shell script for macOS users to clean external drives using `dot_clean` and `find`.
- Added `CleanDrive.bat`: A batch script for Windows users to clean external drives using `del` and `rmdir`.
- Added project boilerplate files: `README.md`, `LICENSE` (MIT), `CONTRIBUTING.md`, `.gitignore`, and `.editorconfig`.

### Fixed
- **CleanDrive.bat**: Added a safety check to prevent accidental cleaning of the main `C:` drive.
- **clean_drive.sh**: Optimized directory cleanup by combining multiple `find` commands into a single, efficient operation.

## [Unreleased]

### Added
- Initial project setup.
