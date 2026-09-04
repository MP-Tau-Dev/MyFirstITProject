# Backup Script

## What it does
Takes a folder as input and creates a compressed, timestamped backup 
of it inside a backups/ folder. Example:

    ./backup.sh my-project

## Why I built this
This is my first small project on GitHub. I wrote it after learning 
the basics of Linux and Bash this first semester — things like file 
permissions, the command line, and working inside a VirtualBox 
environment. I wanted something simple but genuinely useful: a 
script I could actually run before making risky changes to a folder, 
instead of just copy-pasting a backup manually.

It also uses if statements and variables from what I've picked up 
in Intro to Programming, so it ties a few of my first-semester 
courses together in one small build.

## What I learned
- How to check if an argument was passed to a script (-z checks 
  for an empty string)
- How tar -czf compresses a folder into a .tar.gz file
- Using $(date ...) to generate a timestamp for unique filenames
