Sure, here is the README with emojis:

---

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

## 📝 Script Explanation

```bash
#!/bin/bash

clear

echo "╭----------------------------------╮"
echo "|      File Monitoring System      |"
echo "╰----------------------------------╯"

# Store the initial state of the directory tree
initial_state=$(ls -1R)

# Start an infinite loop to monitor changes
while true
do
    # Store the current state of the directory tree
    current_state=$(ls -1R)
    
    # Compare the initial state with the current state
    if [[ "$initial_state" != "$current_state" ]]; then
        current_directory="Amin"
        
        # Check for removed files
        while read -r line; do
            if [[ $line = *"./"* ]]; then 
                current_directory=$line
            elif [[ !($current_state = *$line*) ]]; then 
                echo "- " '"'$line'"' " has been deleted from " $current_directory
            fi
        done <<< "$initial_state"
        
        # Check for added files
        while read -r line; do
            if [[ $line = *"./"* ]]; then 
                current_directory=$line
            elif [[ !($initial_state = *$line*) ]]; then 
                echo "+ " '"'$line'"' " has been added to " $current_directory
            fi
        done <<< "$current_state"
        
        # Update initial_state to be the current state
        initial_state=$current_state
    fi
    
    # Wait for 1 second before the next iteration
    sleep 1
done
```

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

## 🤝 Contributing

Feel free to fork this repository and submit pull requests. Contributions are welcome!

## 📜 License

This project is licensed under the MIT License. See the `LICENSE` file for more details.

## 📧 Contact

For any questions or suggestions, please contact [your-email@example.com].

---

Feel free to adjust the contact information, repository URL, and any other details as needed.
