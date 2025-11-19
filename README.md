<p align="center">
<img src="assests/img/macOS-Drive-Cleaner_logo.webp" alt="macOS Drive Cleaner logo" width="150">
</p>

![Windows](https://img.shields.io/badge/Windows-Batch_Script-blue?style=for-the-badge&logo=windows)
![macOS](https://img.shields.io/badge/macOS-Shell_Script-lightgrey?style=for-the-badge&logo=apple)
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)

## 🍎 macOS Drive Cleaner

These scripts help you quickly and easily clean up external drives (like flash drives) that have been used with a macOS machine. They target and remove hidden macOS system files—such as resource forks, Spotlight indexes, and trash folders—that are unnecessary and can clutter non-Mac systems.

### Files Removed

Both scripts target the following files and directories:

* **`.DS_Store`**: Folder settings and view options.
* **`._*` files**: Resource fork files created by macOS.
* **`.Trashes`**: Hidden macOS trash folder.
* **`.Spotlight-V100`**: Index files used by macOS Spotlight search.
* **`.fseventsd`**: Files used by the File System Events daemon.

***

### 💻 Windows Usage (CleanDrive.bat)

This script is designed for Windows users who want to clean a drive formatted for general use (e.g., FAT32, exFAT) after it's been connected to a Mac.

1.  **Download:** Get the `CleanDrive.bat` file.
2.  **Run:** Double-click the file to execute it.
3.  *Input:** When prompted, **enter the drive letter** of your flash drive (e.g., `E`) and press Enter[cite: 1].
4.  *Confirm:** Press any key to confirm the deletion of files[cite: 3].
5.  *Complete:** The script will change to the drive, delete the files, and let you know when it's safe to eject[cite: 4, 5].

*Note:** The script will check if the drive letter you entered exists before proceeding

***

### 🍏 macOS Usage (clean_drive.sh)

This script is designed for macOS users to clean an external drive before sharing it with a non-Mac user.

1.  **Download:** Get the `clean_drive.sh` file.
2.  **Make Executable:** Open Terminal, navigate to the script's location, and run:
    ```bash
    chmod +x clean_drive.sh
    ```
3.  **Run:** Execute the script:
    ```bash
    ./clean_drive.sh
    ```
4.  **Drag and Drop:** The script will ask you to **drag and drop the flash drive icon** (or folder) directly into the Terminal window and press Enter.
5.  **Confirm:** The script will display a warning and ask for confirmation (`y/n`) before deleting files.
6.  **Complete:** The script uses the built-in `dot_clean` utility for thorough cleanup before removing the remaining hidden files and directories.

***

### License

This project is licensed under the **MIT License** - see the `LICENSE` file for details.