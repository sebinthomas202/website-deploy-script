# Web Deploy Script

## Overview

This project contains a Bash script that automates the process of deploying a website template using Apache Web Server. The script handles the installation of necessary packages, downloads a template, and sets up the web server to serve the template.

## Prerequisites

Before running the script, ensure you have the following installed on your system:

- **yum** package manager (for RHEL-based distributions)
- **Apache Web Server (httpd)**
- **wget**
- **unzip**
- **Git Bash** or **WSL** (for Windows users)

## Script Details

### deploy.sh

The `deploy.sh` script performs the following tasks:

1. Installs necessary packages: `wget`, `unzip`, and `httpd`.
2. Creates a temporary directory for storing web files.
3. Starts and enables the Apache Web Server.
4. Downloads a website template from a given URL.
5. Unzips the downloaded template.
6. Copies the extracted files to the Apache web server's root directory.
7. Restarts the Apache Web Server to apply the changes.

### Usage

#### Linux / macOS

1. Clone the repository:
    ```bash
    git clone https://github.com/your-username/web-deploy-script.git
    ```
2. Navigate to the project directory:
    ```bash
    cd web-deploy-script
    ```
3. Make the script executable:
    ```bash
    chmod +x deploy.sh
    ```
4. Run the script:
    ```bash
    ./deploy.sh
    ```

#### Windows

1. Clone the repository:
    ```bash
    git clone https://github.com/your-username/web-deploy-script.git
    ```
2. Navigate to the project directory using **Git Bash** or **WSL**:
    ```bash
    cd web-deploy-script
    ```
3. Run the script:
    ```bash
    bash deploy.sh
    ```

Alternatively, create and run a `.bat` file if using the Windows Command Prompt:

1. Create a `deploy.bat` file with the following content:
    ```bat
    @echo off
    bash deploy.sh
    ```
2. Run the `.bat` file:
    ```bash
    deploy.bat
    ```

### Notes

- Ensure you have the necessary permissions to install packages and restart services.


## Contributions

Contributions are welcome! Please feel free to submit a pull request or open an issue for suggestions or bug reports.

## Contact

For any questions or suggestions, please contact [sebinthomas202@gmail.com](mailto:sebinthomas202@gmail.com).
