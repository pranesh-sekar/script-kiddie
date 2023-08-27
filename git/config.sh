#!/bin/bash

# Configuring Local Repo
git config --local user.name "Pranesh Sekar" && git config --local user.email "pranesh2014@gmail.com"

# Configuring Credentials for the entire system
git config --global user.name "Pranesh Sekar" && git config --global user.email "pranesh2014@gmail.com"


# View URL of a remote
git remote get-url origin

# Set URL of a remote
git remote set-url origin {{new_url}}