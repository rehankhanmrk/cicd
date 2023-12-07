#!/bin/bash

SSH_USER="root"
SERVER_IP="34.235.168.103"
DEPLOY_PATH="/var/www/cicd"

echo "Deploying to server..."
scp -r ./build/* $SSH_USER@$SERVER_IP:$DEPLOY_PATH
echo "Deployment completed."
npm install
pm2 restart app
