# letter1.py

import os

REQUIRED_FILE = "key.txt"
EXPECTED_CONTENT = "Rick must die"

if os.path.isfile(REQUIRED_FILE):
    with open(REQUIRED_FILE, "r") as f:
        content = f.read().strip()
        if content == EXPECTED_CONTENT:
            print("Don't tell anyone, but the first letter of the password is 'm'.")
        else:
            print("Wrong key, I remember the key.txt being in the directory '/moonbot'.")
else:
    print("Oh no, the key.txt to this file is missing!")
    print("I remember it being in a directory called '/moonbot'.")
    print("Place the 'key.txt' file with the correct message in this directory for the script to run.")

