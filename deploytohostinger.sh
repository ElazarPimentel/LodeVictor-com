#!/bin/bash
# Deployment script for pensanta.com to Hostinger

# Load credentials from .env.local
gitpush.sh
if [ -f .env.local ]; then
    source .env.local
else
    echo "Error: .env.local file not found"
    exit 1
fi

# Check required variables
if [ -z "$FTP_HOST" ] || [ -z "$FTP_USER" ] || [ -z "$FTP_PASS" ]; then
    echo "Error: FTP credentials not set in .env.local"
    echo "Required: FTP_HOST, FTP_USER, FTP_PASS"
    exit 1
fi

REMOTE_PATH="/domains/lodevictor.com/public_html"
LOCAL_DIR="."

echo "Starting deployment to Hostinger..."
echo "Remote path: $REMOTE_PATH"
echo ""

# Create lftp script
lftp -u "$FTP_USER","$FTP_PASS" "$FTP_HOST" << FTPEOF
set ssl:verify-certificate no
cd $REMOTE_PATH

# Mirror entire directory with exclusions
echo "Uploading all files (excluding .git, .env, etc)..."
mirror -R --delete --verbose \
  --exclude .git/ \
  --exclude .gitignore \
  --exclude .env \
  --exclude .env.local \
  --exclude .grok/ \
  --exclude node_modules/ \
  --exclude .DS_Store \
  --exclude deploytohostinger.sh \
  --exclude README.md \
  $LOCAL_DIR .

echo "Deployment completed!"
bye
FTPEOF

echo ""
echo "✅ Deployment finished!"
echo "Visit: https://lodevictor.com"
