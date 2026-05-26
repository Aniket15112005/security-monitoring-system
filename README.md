# Security Monitoring & Threat Detection System

## Project Overview

This project demonstrates the implementation of a complete Security Monitoring & Threat Detection System using open-source cyber security tools on Ubuntu Server running inside VirtualBox.

The objective of this project was to simulate real-world Blue Team Security Operations including:

- Security Monitoring
- Threat Detection
- Intrusion Detection
- Log Analysis
- Linux Hardening
- Packet Analysis
- SIEM Monitoring
- Security Automation
- Incident Reporting
- Honeypot Deployment
- Real-Time Alerting

---

# Environment Configuration

| Component | Configuration |
|---|---|
| Operating System | Ubuntu Server 24.04 LTS |
| Virtualization | Oracle VirtualBox |
| RAM | 4 GB |
| CPU | 2 Cores |
| Storage | 40 GB |

---

# Security Tools Implemented

| Tool | Purpose |
|---|---|
| UFW | Firewall Configuration |
| Fail2Ban | Intrusion Prevention |
| Auditd | Linux Audit Logging |
| Lynis | Security Auditing |
| Wireshark | Packet Analysis |
| Wazuh | SIEM & Threat Monitoring |
| OpenCanary | SSH Honeypot |
| Telegram Alerts | Real-Time Alert Notifications |

---

# Core Features Implemented

## Firewall Hardening
- Configured UFW firewall
- Allowed only required ports
- Restricted unnecessary traffic
- Verified firewall status and logging

---

## Intrusion Detection
- Installed Fail2Ban
- Monitored failed SSH login attempts
- Simulated brute-force attacks
- Generated automatic alerts

---

## Log Monitoring
- Implemented Auditd
- Monitored authentication events
- Analyzed system logs
- Reviewed suspicious login activity

---

## Security Auditing
- Performed complete Lynis security audit
- Identified weak configurations
- Reviewed hardening recommendations
- Evaluated Linux security posture

---

## Packet Analysis
Using Wireshark, the following traffic was analyzed:

- DNS Requests
- SSH Traffic
- TCP Communication
- HTTPS Traffic
- ICMP Requests

Packet filtering and protocol inspection were successfully demonstrated.

---

# SIEM Integration

Wazuh SIEM was deployed and integrated with:
- Authentication logs
- Firewall events
- Fail2Ban alerts
- Audit logs
- SSH monitoring

The SIEM environment successfully generated and monitored:
- Failed SSH logins
- Authentication alerts
- Suspicious activities
- Threat detection events

---

# Real-Time Alerting

Real-time monitoring and alerting were implemented using:
- Wazuh Dashboard
- auth.log monitoring
- Fail2Ban live monitoring
- Telegram notifications

Security events generated immediate alerts and incident notifications.

---

# Telegram Alert Automation

A custom Bash script (`telegram.sh`) was developed to send security alerts directly to Telegram.

Features:
- Real-time security notifications
- SSH attack alerts
- Automated incident messaging
- Remote monitoring support

---

# SSH Honeypot Deployment

An OpenCanary SSH Honeypot was deployed to simulate a decoy SSH server for monitoring suspicious login attempts.

## Honeypot Capabilities

- Fake SSH authentication service
- Threat monitoring
- Suspicious login detection
- Credential capture simulation
- Attacker behavior logging

The honeypot successfully logged unauthorized SSH connection attempts.

---

# Automation Scripts

| Script | Purpose |
|---|---|
| monitor.sh | System security monitoring |
| telegram.sh | Telegram alert automation |

---

# Screenshots Included

The repository includes screenshots demonstrating:

- Ubuntu Server Installation
- UFW Firewall Rules
- Fail2Ban Detection
- Auditd Monitoring
- Lynis Audit Results
- Wireshark Packet Analysis
- Wazuh SIEM Dashboard
- Real-Time Alerts
- Telegram Notifications
- OpenCanary Honeypot Activity

---

# Reports Included

| Report | Description |
|---|---|
| INCIDENT_REPORT.md | Security incidents and findings |
| SECURITY_AUDIT_REPORT.md | Lynis audit analysis |
| SECURITY_RECOMMENDATIONS.md | Security improvement recommendations |
| PACKET_ANALYSIS.md | Wireshark traffic analysis |
| SIEM_MONITORING_REPORT.md | Wazuh SIEM monitoring report |

---

# Learning Outcomes

This project provided practical experience in:

- Blue Team Security Operations
- SIEM Monitoring
- Threat Detection
- Linux Hardening
- Log Analysis
- Incident Response
- Security Automation
- Packet Analysis
- Honeypot Deployment
- Real-Time Monitoring

---

# Conclusion

The Security Monitoring & Threat Detection environment was successfully implemented using open-source cyber security tools. The project demonstrated effective Blue Team defensive monitoring techniques including SIEM integration, intrusion detection, honeypot deployment, packet analysis, real-time alerting, and security automation.


