#!/bin/bash

# Ensure /usr/local/bin exists and has correct permissions
sudo chmod 755 /usr/local/bin

# Download the hello binary to /usr/local/bin
echo "Downloading the hello binary..."
sudo curl -L -o /usr/local/bin/hello https://github.com/kaium123/hello-buddy/releases/download/v1/hello

# Make the hello binary executable
sudo chmod +x /usr/local/bin/hello

# Optionally, you can run it in the background (detached mode)
nohup /usr/local/bin/hello > /dev/null 2>&1 &

echo "Installation complete!"
