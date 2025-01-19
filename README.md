# File Monitoring

File Monitoring is a simple bash script designed to monitor changes in the files and directories of a specified directory. It detects and reports any additions or deletions of files in real-time.

---

## Features

1. Monitors a directory for any changes.
2. Reports newly added files.
3. Reports deleted files.
4. Provides continuous real-time monitoring.

---

## Requirements

- Unix-like operating system (Linux, macOS, etc.).
- Bash shell.

---

## Usage

1. **Clone the repository:**

    ```bash
    git clone <repository-url>
    cd Ami
    ```

2. **Make the script executable:**

    ```bash
    chmod +x FileManagement.sh
    ```

3. **Run the script:**

    ```bash
    ./FileManagement.sh
    ```

    The script will start monitoring the current directory. You can modify the script to monitor a specific directory by changing the directory path in the script.

---

## Key Components

1. **Clear the terminal screen:** `clear`
2. **Display a header:** Prints a decorative header for the monitoring system.
3. **Store the initial state:** `initial_state=$(ls -1R)`
4. **Start infinite loop:** `while true; do ... done`
5. **Store current state:** `current_state=$(ls -1R)`
6. **Compare states:** Checks for differences between initial and current state.
7. **Check for removed files:** Uses a loop to identify and report deleted files.
8. **Check for added files:** Uses a loop to identify and report added files.
9. **Update initial state:** `initial_state=$current_state`
10. **Wait before next iteration:** `sleep 1`

---

## Feedback

We’d love to hear your thoughts and suggestions! Feel free to reach out or open an issue in this repository.
