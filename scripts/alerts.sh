

LOG_FILE="/var/log/auth.log"

BOT_TOKEN="YOUR_BOT_TOKEN"
CHAT_ID="YOUR_CHAT_ID"

echo ""
echo " REAL-TIME SECURITY ALERT SYSTEM "
echo ""

tail -Fn0 $LOG_FILE | while read line ; do

    echo "$line" | grep "Failed password" > /dev/null

    if [ $? = 0 ]
    then
        echo "[ALERT] Failed SSH Login Attempt Detected"

        curl -s -X POST https://api.telegram.org/bot$BOT_TOKEN/sendMessage \
        -d chat_id=$CHAT_ID \
        -d text=" SECURITY ALERT  Failed SSH login detected on Ubuntu Server."
    fi

done