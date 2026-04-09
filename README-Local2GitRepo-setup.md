## Setup Guide
Local to GitHub Repository Setup Guide
This document outlines the steps taken to initialize a local Dockerized Node.js project on VS-Code IDE and push it to a remote GitHub repository from VS Code-Power Shellgit .

Prerequisites
Git installed on the local machine.

A GitHub account (e.g., github.com/bsathi).

Project code located in REPOS\docker\xxxx-demo-app.

Step 1: Initialize Local Repository
Navigate to the root project folder in your terminal and initialize Git.

PowerShell
# Create the hidden .git directory
git init
Step 2: Stage and Commit Files
Add your application files, Dockerfile, and configurations to the local staging area and commit them.

PowerShell
# Stage all files in the current directory
git add .

# Create a snapshot of the current state
git commit -m "Initial commit: Node.js app with Docker & Compose setup"
Step 3: Configure Remote and Branching
Link the local repository to the empty GitHub repository and standardize the branch name.

PowerShell
# Add the remote destination (GitHub)
git remote add origin https://github.com/bsathi/docker-userprofile-app.git

# Rename the default branch to 'main' to match GitHub standards
git branch -M main

# Verify the connection
git remote -v
Step 4: Push to GitHub
Upload the local commits to the remote main branch on GitHub.

PowerShell
# Push and set 'main' as the default upstream branch
git push -u origin main