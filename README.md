# 📂 File Monitoring

File Monitoring is a simple bash script designed to monitor changes in the files and directories of a specified directory. It detects and reports any additions or deletions of files in real-time.

## ✨ Features

- 📡 Monitors a directory for any changes
- 🆕 Reports newly added files
- 🗑️ Reports deleted files
- ⏱️ Provides continuous real-time monitoring

## 📋 Requirements

- 🖥️ Unix-like operating system (Linux, macOS, etc.)
- 🐚 Bash shell

## 🚀 Usage

1. **Clone the repository:**

    ```bash
    git clone <repository-url>
    cd file-monitoring
    ```

2. **Make the script executable:**

    ```bash
    chmod +x file_monitoring.sh
    ```

3. **Run the script:**

    ```bash
    ./file_monitoring.sh
    ```

    The script will start monitoring the current directory. You can modify the script to monitor a specific directory by changing the directory path in the script.

### 🔍 Key Components

- **Clear the terminal screen:** `clear`
- **Display a header:** Prints a decorative header for the monitoring system.
- **Store the initial state:** `initial_state=$(ls -1R)`
- **Start infinite loop:** `while true; do ... done`
- **Store current state:** `current_state=$(ls -1R)`
- **Compare states:** Checks for differences between initial and current state.
- **Check for removed files:** Uses a loop to identify and report deleted files.
- **Check for added files:** Uses a loop to identify and report added files.
- **Update initial state:** `initial_state=$current_state`
- **Wait before next iteration:** `sleep 1`

