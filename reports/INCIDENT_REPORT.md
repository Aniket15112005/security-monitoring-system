# Incident Report

## Overview

This report documents security incidents, suspicious activities, authentication events, and monitoring alerts detected during implementation of the Security Monitoring & Threat Detection environment.

---

# Incident Summary

| Incident ID | Severity | Description | Detection Tool | Action Taken |
|---|---|---|---|---|
| INC001 | High | Multiple failed SSH login attempts detected | Fail2Ban | Suspicious activity monitored |
| INC002 | High | Brute-force SSH attack simulation detected | auth.log | Failed logins analyzed |
| INC003 | Medium | Firewall rules configured and verified | UFW | Allowed only required ports |
| INC004 | Medium | Authentication alerts generated | Wazuh | SIEM alerts reviewed |
| INC005 | Medium | SSH traffic analyzed | Wireshark | Packet capture completed |
| INC006 | Low | DNS traffic monitored | Wireshark | Traffic analysis documented |
| INC007 | Medium | Login events recorded | Auditd | Authentication logs reviewed |
| INC008 | Low | Weak configurations identified | Lynis | Recommendations documented |
| INC009 | High | Real-time alerts generated | Wazuh | Live monitoring verified |
| INC010 | High | Honeypot SSH login attempts detected | OpenCanary | Threat activity logged |
| INC011 | Medium | Telegram alert notifications tested | telegram.sh | Alert automation verified |
| INC012 | Medium | SIEM correlation events monitored | Wazuh | Centralized monitoring verified |

---

# Detailed Findings

## Failed SSH Authentication Attempts

Multiple invalid SSH login attempts were intentionally generated to simulate brute-force attack behavior. Fail2Ban and Wazuh successfully detected the suspicious authentication activity.

---

## Firewall Monitoring

UFW firewall rules were configured to allow only required ports including:
- SSH
- HTTP
- HTTPS

Firewall activity was monitored successfully.

---

## SIEM Monitoring

Wazuh SIEM successfully centralized and monitored:
- authentication logs
- firewall events
- failed login attempts
- suspicious activities

Real-time security alerts were generated successfully.

---

## Honeypot Activity

An OpenCanary SSH honeypot was deployed and configured to simulate a fake SSH service.

The honeypot detected:
- unauthorized login attempts
- suspicious SSH activity
- attacker interaction attempts

---

## Telegram Alert Automation

A custom Telegram alerting script was implemented to automate security notifications.

Alerts included:
- failed login attempts
- suspicious authentication events
- security monitoring notifications

---

# Conclusion

The implemented monitoring environment successfully demonstrated:
- Blue Team monitoring
- SIEM integration
- real-time alerting
- honeypot deployment
- packet analysis
- incident reporting
- security automation