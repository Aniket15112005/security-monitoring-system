# Commands and Scripts Documentation

# Project Overview

This document contains all commands, scripts, configurations, and monitoring procedures used during the implementation of the Security Monitoring & Threat Detection System.

The project includes:
- Firewall configuration
- Intrusion detection
- SIEM monitoring
- Packet analysis
- Security auditing
- Honeypot deployment
- Real-time alerting
- Telegram automation

---

# PART 1 — UBUNTU SERVER SETUP

## Update System

```bash
sudo apt update && sudo apt upgrade -y
```

### Purpose
Updates package lists and upgrades installed packages to the latest versions.

---

# PART 2 — UFW FIREWALL

## Install UFW

```bash
sudo apt install ufw -y
```

### Purpose
Installs the Uncomplicated Firewall package.

---

## Enable Firewall

```bash
sudo ufw enable
```

### Purpose
Activates the firewall and starts filtering traffic.

---

## Check Firewall Status

```bash
sudo ufw status
```

### Purpose
Displays active firewall rules.

---

## Allow SSH

```bash
sudo ufw allow ssh
```

### Purpose
Allows SSH connections on port 22.

---

## Allow HTTP

```bash
sudo ufw allow 80
```

### Purpose
Allows HTTP traffic.

---

## Allow HTTPS

```bash
sudo ufw allow 443
```

### Purpose
Allows HTTPS traffic.

---

## Reload Firewall

```bash
sudo ufw reload
```

### Purpose
Reloads firewall rules.

---

# PART 3 — FAIL2BAN INTRUSION DETECTION

## Install Fail2Ban

```bash
sudo apt install fail2ban -y
```

### Purpose
Installs intrusion prevention service.

---

## Enable Fail2Ban

```bash
sudo systemctl enable fail2ban
```

### Purpose
Starts Fail2Ban automatically during boot.

---

## Start Fail2Ban

```bash
sudo systemctl start fail2ban
```

### Purpose
Starts intrusion prevention monitoring.

---

## Check Fail2Ban Status

```bash
sudo systemctl status fail2ban
```

### Purpose
Verifies that Fail2Ban is running.

---

## Monitor Authentication Logs

```bash
sudo tail -f /var/log/auth.log
```

### Purpose
Monitors failed login attempts and authentication events in real time.

---

## Check Fail2Ban Jail Status

```bash
sudo fail2ban-client status
```

### Purpose
Displays active protection jails.

---

# PART 4 — AUDITD LOG MONITORING

## Install Auditd

```bash
sudo apt install auditd -y
```

### Purpose
Installs Linux auditing framework.

---

## Enable Auditd

```bash
sudo systemctl enable auditd
```

### Purpose
Enables audit logging during startup.

---

## Start Auditd

```bash
sudo systemctl start auditd
```

### Purpose
Starts audit monitoring service.

---

## Check Auditd Status

```bash
sudo systemctl status auditd
```

### Purpose
Verifies audit service functionality.

---

## Search Login Events

```bash
sudo ausearch -m LOGIN
```

### Purpose
Searches login-related audit events.

---

## View Authentication Logs

```bash
sudo cat /var/log/auth.log
```

### Purpose
Displays authentication activity logs.

---

# PART 5 — LYNIS SECURITY AUDIT

## Install Lynis

```bash
sudo apt install lynis -y
```

### Purpose
Installs security auditing tool.

---

## Run Security Audit

```bash
sudo lynis audit system
```

### Purpose
Performs complete Linux security audit.

---

## Save Audit Report

```bash
sudo lynis audit system > lynis-report.txt
```

### Purpose
Saves audit results to a text file.

---

## View Lynis Report

```bash
cat lynis-report.txt
```

### Purpose
Displays saved audit report.

---

# PART 6 — WIRESHARK PACKET ANALYSIS

## Install Wireshark

```bash
sudo apt install wireshark -y
```

### Purpose
Installs packet analysis tool.

---

## Launch Wireshark

```bash
wireshark
```

### Purpose
Starts Wireshark GUI.

---

# Wireshark Filters

## DNS Traffic

```text
dns
```

### Purpose
Filters DNS packets.

---

## TCP Traffic

```text
tcp
```

### Purpose
Displays TCP communication.

---

## SSH Traffic

```text
tcp.port == 22
```

### Purpose
Filters SSH packets.

---

## HTTP Traffic

```text
http
```

### Purpose
Displays HTTP packets.

---

## ICMP Traffic

```text
icmp
```

### Purpose
Displays ping packets.

---

# PART 7 — WAZUH SIEM

## Install Wazuh

```bash
curl -sO https://packages.wazuh.com/4.7/wazuh-install.sh
sudo bash ./wazuh-install.sh -a
```

### Purpose
Installs Wazuh SIEM environment.

---

## Check Wazuh Manager Status

```bash
sudo systemctl status wazuh-manager
```

### Purpose
Checks SIEM manager service.

---

## Check Wazuh Dashboard Status

```bash
sudo systemctl status wazuh-dashboard
```

### Purpose
Verifies dashboard functionality.

---

## Access Dashboard

```text
https://<server-ip>
```

### Purpose
Opens Wazuh monitoring dashboard.

---

# PART 8 — REAL-TIME MONITORING

## Monitor Authentication Logs Live

```bash
sudo tail -f /var/log/auth.log
```

### Purpose
Displays live security events.

---

## Monitor Wazuh Logs

```bash
sudo tail -f /var/ossec/logs/ossec.log
```

### Purpose
Monitors Wazuh SIEM activity.

---

# PART 9 — TELEGRAM ALERT AUTOMATION

## telegram.sh Script

```bash
#!/bin/bash

BOT_TOKEN="YOUR_BOT_TOKEN"
CHAT_ID="YOUR_CHAT_ID"
MESSAGE="Security Alert: Failed SSH Login Detected"

curl -s -X POST https://api.telegram.org/bot$BOT_TOKEN/sendMessage \
-d chat_id=$CHAT_ID \
-d text="$MESSAGE"
```

### Purpose
Sends automated Telegram security alerts.

---

## Make Script Executable

```bash
chmod +x telegram.sh
```

### Purpose
Allows script execution.

---

## Run Telegram Alert Script

```bash
./telegram.sh
```

### Purpose
Sends security alert notification to Telegram.

---

# PART 10 — OPENCANARY SSH HONEYPOT

## Install OpenCanary

```bash
pip install opencanary
```

### Purpose
Installs SSH honeypot software.

---

## Generate Configuration

```bash
opencanaryd --copyconfig
```

### Purpose
Creates default honeypot configuration.

---

## Start OpenCanary

```bash
opencanaryd --start
```

### Purpose
Starts honeypot monitoring service.

---

## Stop OpenCanary

```bash
opencanaryd --stop
```

### Purpose
Stops honeypot service.

---

## Check Honeypot Logs

```bash
tail -f ~/.opencanary.log
```

### Purpose
Displays attacker interaction logs.

---

## Test Honeypot

```bash
ssh test@localhost
```

### Purpose
Simulates SSH attack attempt.

---

# PART 11 — SYSTEM MONITORING SCRIPT

## monitor.sh Script

```bash
#!/bin/bash

echo "==== SYSTEM SECURITY STATUS ===="

echo ""
echo "Firewall Status:"
sudo ufw status

echo ""
echo "Fail2Ban Status:"
sudo systemctl status fail2ban --no-pager

echo ""
echo "Auditd Status:"
sudo systemctl status auditd --no-pager

echo ""
echo "Wazuh Manager Status:"
sudo systemctl status wazuh-manager --no-pager

echo ""
echo "Recent Failed SSH Attempts:"
sudo tail -n 20 /var/log/auth.log
```

### Purpose
Displays overall security monitoring status.

---

## Make Script Executable

```bash
chmod +x monitor.sh
```

### Purpose
Allows execution permission.

---

## Run Monitoring Script

```bash
./monitor.sh
```

### Purpose
Displays combined security monitoring information.

---

# PART 12 — GITHUB COMMANDS

## Initialize Git Repository

```bash
git init
```

### Purpose
Creates Git repository.

---

## Add Files

```bash
git add .
```

### Purpose
Stages all project files.

---

## Commit Changes

```bash
git commit -m "Cyber Security Monitoring Task"
```

### Purpose
Creates repository commit.

---

## Rename Main Branch

```bash
git branch -M main
```

### Purpose
Sets default branch name.

---

## Connect GitHub Repository

```bash
git remote add origin YOUR_REPOSITORY_URL
```

### Purpose
Links local repository to GitHub.

---

## Push Project to GitHub

```bash
git push -u origin main
```

### Purpose
Uploads project to GitHub.

---

# PART 13 — USEFUL TROUBLESHOOTING COMMANDS

## Check Open Ports

```bash
sudo ss -tulnp
```

### Purpose
Displays active network ports.

---

## Check Running Services

```bash
systemctl list-units --type=service
```

### Purpose
Lists active services.

---

## Check Disk Usage

```bash
df -h
```

### Purpose
Displays storage usage.

---

## Check Memory Usage

```bash
free -h
```

### Purpose
Displays RAM usage.

---

# Conclusion

This command documentation contains all commands, scripts, monitoring procedures, SIEM integration steps, honeypot configurations, firewall management, packet analysis filters, and automation scripts used during the implementation of the Security Monitoring & Threat Detection System project.