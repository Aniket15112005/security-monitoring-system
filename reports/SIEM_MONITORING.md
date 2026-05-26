# SIEM Monitoring Report

## Project Overview

This report documents the implementation of a Security Information and Event Management (SIEM) environment using Wazuh within the Ubuntu Server security monitoring infrastructure.

The purpose of the SIEM deployment was to centralize security monitoring, analyze logs, detect suspicious activities, generate alerts, and improve visibility into security events occurring within the system.

---

# SIEM Objectives

The following objectives were achieved through the SIEM implementation:

- Centralized log monitoring
- Authentication monitoring
- Threat detection
- Security event correlation
- Real-time alert generation
- Incident visibility
- Security monitoring automation

---

# SIEM Platform Used

| Component | Description |
|---|---|
| Wazuh Manager | Centralized security event processing |
| Wazuh Dashboard | Security visualization and monitoring |
| Elastic Stack | Log visualization and indexing |
| Ubuntu Server | Monitored endpoint |

---

# Environment Details

| Configuration | Value |
|---|---|
| Operating System | Ubuntu Server 24.04 LTS |
| Virtualization | Oracle VirtualBox |
| SIEM Platform | Wazuh |
| Monitoring Type | Host-Based Monitoring |
| Log Sources | auth.log, Auditd, UFW, Fail2Ban |

---

# Wazuh Installation

The Wazuh SIEM environment was successfully deployed using the official Wazuh installation documentation.

Installed Components:
- Wazuh Manager
- Wazuh Dashboard
- Elastic Stack Integration

The dashboard was successfully accessed through the browser interface and used to monitor system security events.

---

# Logs Integrated Into SIEM

The following log sources were monitored and analyzed through Wazuh:

| Log Source | Purpose |
|---|---|
| auth.log | Authentication monitoring |
| Auditd Logs | System audit logging |
| UFW Logs | Firewall monitoring |
| Fail2Ban Logs | Intrusion prevention monitoring |
| System Logs | Security event monitoring |

---

# Security Events Monitored

The SIEM successfully detected and monitored:

- Failed SSH login attempts
- Authentication failures
- Suspicious login behavior
- Firewall events
- Intrusion detection alerts
- System authentication activity
- SSH brute-force simulations

---

# Real-Time Alerting

Real-time security alerts were generated for:

- Multiple failed SSH logins
- Suspicious authentication attempts
- Intrusion detection events
- Firewall-related activities

The Wazuh dashboard displayed live security alerts and event information successfully.

---

# Event Correlation

The SIEM environment successfully correlated security events from multiple sources including:

- auth.log
- Fail2Ban
- Auditd
- UFW firewall logs

This improved visibility into suspicious activities and security incidents.

---

# SIEM Dashboard Features

The Wazuh dashboard provided:

- Security alert visualization
- Event severity monitoring
- Authentication monitoring
- Log searching and filtering
- Threat activity analysis
- Real-time event monitoring

---

# Telegram Alert Integration

A custom Bash script named `telegram.sh` was implemented to automate Telegram-based security notifications.

## Features

- Real-time alert delivery
- Remote incident monitoring
- Authentication event notifications
- Security automation

Telegram notifications successfully enhanced the real-time monitoring capabilities of the SIEM environment.

---

# Honeypot Integration

An OpenCanary SSH honeypot was deployed to simulate a fake SSH service for monitoring attacker behavior.

The honeypot generated:
- suspicious login attempts
- fake authentication events
- SSH attack simulations

These events further improved threat visibility within the monitoring environment.

---

# Security Findings

## Authentication Monitoring

Multiple failed SSH login attempts were detected and analyzed successfully.

---

## Firewall Monitoring

UFW firewall activity was successfully monitored through Wazuh integration.

---

## Threat Detection

The SIEM generated alerts for:
- suspicious SSH activity
- brute-force login simulations
- unauthorized authentication attempts

---

# Benefits of SIEM Implementation

The SIEM deployment improved:

- centralized monitoring
- security visibility
- incident detection
- log correlation
- threat monitoring
- alert management

---

# Challenges Faced

During implementation, several challenges were encountered:

- VirtualBox clipboard issues
- SSH traffic filtering in Wireshark
- SIEM log correlation configuration
- Honeypot configuration troubleshooting

These issues were resolved successfully during the implementation process.

---

# Conclusion

The Wazuh SIEM implementation successfully demonstrated centralized security monitoring, threat detection, authentication monitoring, event correlation, and real-time alerting within the Ubuntu Server environment.

The project effectively simulated Blue Team defensive security operations using open-source SIEM technologies and monitoring tools.