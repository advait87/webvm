#!/bin/bash

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

COMMAND="cat \$HOME/chitsheet.txt"
echo "Morty wherever you are, run cat \$HOME/chitsheet.txt to see my cheatsheet of Linux commands"

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

start_timer &

echo
echo "Rick: Go Morty, the terminal is yours. Type commands and save us!"
echo "Rick: Type 'rick' anytime to check how much time is left!"
echo "Rick: I overheard that one of the letters is saved in an environment variable."
echo "Rick: Also, I know the 4th letter, ask me and I'll tell you."


