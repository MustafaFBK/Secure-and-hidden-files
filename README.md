# SecureFolderLocker

## Overview
**SecureFolderLocker** is a simple batch script that allows you to lock and unlock a folder on your Windows system. The folder is hidden and secured using a password, making it inaccessible without the correct credentials. This tool is ideal for quickly securing sensitive files and folders.

---

## Features
- **Lock Folder**: Hides and secures the folder using a password.
- **Unlock Folder**: Restores access to the folder with the correct password.
- **Password Protection**: Uses a predefined password for security.
- **Simple and Lightweight**: No installation required; runs directly as a batch script.

---

## How It Works
1. **Locking**:
   - The folder is renamed and hidden using system attributes.
   - Access is restricted until the correct password is entered.
2. **Unlocking**:
   - The folder is restored to its original state after entering the correct password.
3. **Password**:
   - The password is stored in the script (replace `YourSecurePassword123` with your desired password).

---

## Usage
1. Download the script (`SecureFolderLocker.bat`).
2. Double-click the script to run it.
3. Follow the on-screen prompts to lock or unlock the folder.

---

## Security Note
- This script is for **basic folder protection** and is not suitable for highly sensitive data.
- Always back up your files before using this tool.
- Replace the default password (`YourSecurePassword123`) with a strong, unique password.

---

## License
This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for details.

---

## Author
- **Mustafa Banikhalaf**

---

## Contributing
Contributions are welcome! If you'd like to contribute to this project, please:
1. Fork the repository.
2. Create a new branch for your feature or bugfix.
3. Submit a pull request.

---

## Acknowledgments
- This script uses native Windows commands for folder manipulation.

---

Thanks for using **SecureFolderLocker**! A simple yet effective tool for securing your folders. 😊
