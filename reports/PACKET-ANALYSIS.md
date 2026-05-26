# Packet Analysis Report

## Objective

The objective of this analysis was to capture and inspect network traffic generated within the Ubuntu Server environment using Wireshark.

---

# Traffic Analysis Overview

The following protocols and traffic types were analyzed:

| Protocol | Source IP | Destination IP | Observation |
|---|---|---|---|
| DNS | Local VM | DNS Server | DNS query traffic detected |
| TCP | Local VM | External Host | Standard TCP communication observed |
| SSH | Local VM | Ubuntu Server | SSH traffic monitored on port 22 |
| HTTPS | Local VM | Web Server | Encrypted web traffic captured |
| ICMP | Local VM | External Host | Ping packets successfully analyzed |

---

# DNS Analysis

DNS requests and responses were successfully captured using Wireshark filters.

Observations:
- domain name resolution requests detected
- outbound DNS traffic monitored
- successful DNS query responses captured

---

# TCP Traffic Analysis

TCP communication between the Ubuntu VM and external systems was analyzed.

Observations:
- TCP handshake packets identified
- active network communication verified
- packet flow successfully monitored

---

# SSH Packet Monitoring

SSH traffic was analyzed using:
```text
tcp.port == 22