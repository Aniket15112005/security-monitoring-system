echo "===== SECURITY MONITORING STATUS ====="

echo ""
echo "UFW STATUS:"
sudo ufw status

echo ""
echo "FAIL2BAN STATUS:"
sudo fail2ban-client status sshd

echo ""
echo "AUDITD STATUS:"
sudo systemctl status auditd --no-pager

echo ""
echo "RECENT FAILED LOGINS:"
sudo tail -n 10 /var/log/auth.log
