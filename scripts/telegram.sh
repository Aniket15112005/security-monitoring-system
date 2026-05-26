#!/bin/bash

BOT_TOKEN="YOUR_BOT_TOKEN"
CHAT_ID="YOUR_CHAT_ID"

MESSAGE="🚨 SECURITY ALERT 🚨 Failed SSH login detected."

curl -s -X POST https://api.telegram.org/bot$BOT_TOKEN/sendMessage \
-d chat_id=$CHAT_ID \
-d text="$MESSAGE"