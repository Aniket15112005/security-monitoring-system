# Alert Generation System Report

## Overview

A real-time security alert generation system was implemented to automate detection and notification of suspicious authentication activities.

The system continuously monitors Linux authentication logs and generates instant alerts for failed SSH login attempts.

---

# Technologies Used

| Component | Purpose |
|---|---|
| Bash Script | Monitoring automation |
| auth.log | Authentication monitoring |
| Telegram Bot API | Real-time notifications |
| Wazuh SIEM | Security event monitoring |

---

# Features Implemented

- Real-time monitoring
- Failed SSH detection
- Automated Telegram alerts
- Authentication event monitoring
- Continuous log analysis

---

# Script Files

| Script | Purpose |
|---|---|
| alert_system.sh | Real-time alert generation |
| telegram.sh | Telegram notifications |

---

# Workflow

1. Monitor authentication logs
2. Detect failed SSH login attempts
3. Generate security alert
4. Send Telegram notification
5. Record event within SIEM environment

---

# Security Benefits

The alert generation system improves:
- incident visibility
- threat detection
- response speed
- monitoring automation
- real-time awareness

---

# Conclusion

The automated alert generation system successfully demonstrated real-time monitoring and security notification capabilities using open-source tools and Bash scripting.