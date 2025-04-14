#!/bin/bash

# 1. ASCII Art
clear
echo "==============================="
echo "   ASCII ART GOES HERE"
echo "==============================="
sleep 1

# 2. Dialogue Function
say() {
    echo
    echo "$1"
    echo
    read -p ">> Press Enter to continue <<"
}

say "Morty: Geez Grandpa, we're stuck in a laptop. We need to get out of here."
say "Rick: Grrr! Morty, the system is going to wipe itself out in 4:20 minutes. We need to move fast."
say "Morty: Why are you telling me that? You're supposed to save us."
say "Rick: What the f Morty, someone linked my brain to this computer. We’re in a terminal, Morty!"

# 3. Copy to Clipboard
COMMAND="cat \$HOME/chitsheet.txt"
read -p "Rick: Should I copy this command to your clipboard Morty? (y/n) " choice

if [[ "$choice" =~ ^[Yy]$ ]]; then
    if command -v xclip >/dev/null; then
        echo "$COMMAND" | xclip -selection clipboard
        echo "Rick: Boom! It's in your clipboard Morty!"
    elif command -v pbcopy >/dev/null; then
        echo "$COMMAND" | pbcopy
        echo "Rick: Boom! It's in your clipboard Morty!"
    else
        echo "Rick: Aaah crap! Clipboard tool not found, you're on your own Morty!"
    fi
else
    echo "Rick: Fine Morty, don’t take my help. Typical."
fi

# 4. Timer function
REMAINING_FILE="/tmp/rick_time_left"

start_timer() {
    total_seconds=260
    while [ $total_seconds -gt 0 ]; do
        echo $total_seconds > "$REMAINING_FILE"
        sleep 1
	total_seconds=$((total_seconds - 1))
    done
    echo 0 > "$REMAINING_FILE"
    clear
    echo "==============================="
    echo "[Rick]: Aaaaand we're dead Morty!"
    echo "==============================="
    exit 1
}

# Start timer in background
start_timer &

# Let the player go
echo
echo "Rick: Go Morty, the terminal is yours. Type commands and save us!"
echo "Rick: Type 'rick' anytime to check how much time is left!"
echo "Rick: I overheard that one of the letters is saved in an environment variable."
echo "Rick: Also, I know the 4th letter, ask me and I'll tell you."


