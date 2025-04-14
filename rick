#!/bin/bash

case "$1" in
    "")
        # Check if the file exists and read the time left
        if [[ -f /tmp/rick_time_left ]]; then
            RICK_TIME_LEFT=$(< /tmp/rick_time_left)  # Read the remaining time from the file
            if [[ $RICK_TIME_LEFT -le 0 ]]; then
                echo "[Rick]: We're dead Morty!"
            else
                echo "[Rick]: Time remaining: $((RICK_TIME_LEFT / 60))m $((RICK_TIME_LEFT % 60))s"
            fi
        else
            echo "[Rick]: No timer running Morty! You need to run the script first."
        fi
        echo "[Rick]: Oh and by the way, I *might* know the 4th letter of the password. Ask me if you're curious, Morty..."
        ;;
    --help)
        echo "Usage: rick [--help | letter_4 | tell_password]"
        echo
        echo "  --help           Show this help message"
        echo "  letter_4         Ask Rick what the 4th letter of the password is"
        ;;
    letter_4)
        echo "[Rick]: Alright Morty, listen up. The 4th letter is: r"
        ;;
    *)
        echo "[Rick]: Ugh, '$1'? That's not even a real command, Morty. Try 'rick --help'"
        ;;
esac
