#!/bin/bash
# Deployment script for pensanta.com to Hostinger

# Load credentials from .env.local
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

# Upload HTML files
echo "Uploading HTML files..."
mput *.html

# Upload favicon, sitemap and robots.txt
echo "Uploading favicon, sitemap and robots.txt..."
put favicon.svg
put sitemap.xml
put robots.txt

# Upload CSS folder
echo "Uploading CSS folder..."
mirror -R --delete --verbose css css

# Upload JS folder
echo "Uploading JS folder..."
mirror -R --delete --verbose js js

# Upload images folder
echo "Uploading images folder..."
mirror -R --delete --verbose images images

# Upload EN folder
echo "Uploading EN folder..."
mirror -R --delete --verbose en en

# Upload HE folder
echo "Uploading HE folder..."
mirror -R --delete --verbose he he

echo "Deployment completed!"
bye
FTPEOF

echo ""
echo "✅ Deployment finished!"
echo "Visit: https://lodevictor.com"
