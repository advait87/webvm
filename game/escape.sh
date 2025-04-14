#!/bin/bash

# Rick-style message
echo "Morty, listen up! We're not messing around here. You gotta check if the password is correct, or you're stuck, Morty!"

# Check if password.txt exists in the current directory
if [ -f "password.txt" ]; then
    # If the file exists, read its content and check if it's "mUnChy"
    stored_password=$(cat password.txt)
    
    if [ "$stored_password" == "mUnrHn" ]; then
        echo "Well, Morty, you actually got it right! The password is correct! You won!"
    else
        echo "Morty, that password is wrong! It's not what I told you! Try again!"
    fi
else
    # If the file doesn't exist, prompt Morty to create it
    echo "Morty, there’s no password.txt file! You gotta create it yourself."
    echo "Write it in a new file called password.txt, Morty!"
    
    # Prompt Morty to create the file (we'll automatically write the password for them)
    echo "mUnChy" > password.txt
    echo "I’ve created password.txt for you, Morty. You better remember this next time!"
fi
