# Echo.Pi Gateway Firmware Features

[简体中文](README_zh.md) | **English**

## Product Overview

Echo.Pi is an enterprise-grade intelligent gateway system with an intuitive web management interface, supporting multiple languages (简体中文，繁体中文，English). No professional networking knowledge required - easily manage enterprise, school, or complex network environments.

---

## Core Features

### 1. Network Settings

#### WAN Access
  - Multiple connection types: DHCP, Static IP, PPPoE
  - Multi-WAN management, supporting multiple broadband connections
  - Custom DNS server configuration
  - Batch configuration and import/export functionality

#### LAN Settings
  - Flexible LAN IP configuration
  - Support for multiple LAN subnets
  - Automatic DHCP IP assignment

#### DHCP Service
  - Automatic IP address assignment
  - IPv6 network support
  - Configurable lease time
  - Flexible IP address range settings

#### VLAN Network Isolation
  - VLAN network segmentation (1-4094 network IDs)
  - Flexible configuration for different network zones
  - Network isolation and security control

#### Routing Management
  - Real-time routing status monitoring
  - Custom static routing rules
  - Route priority settings
  - Flexible traffic flow control

---

### 2. VPN Networking

#### VPN Client (6 Protocols Supported)
  - **Socks5 Proxy**: Fast proxy configuration
  - **Shadowsocks**: Secure browsing protocol
  - **Trojan**: Highly concealed proxy protocol
  - **Hysteria2**: High-speed UDP acceleration protocol
  - **L2TP**: Traditional stable VPN protocol
  - **WireGuard**: Next-generation efficient VPN protocol

**Convenient Features:**
  - Batch add, delete, and test configurations
  - One-click import/export configurations
  - Real-time connection status and latency testing
  - Configuration file upload support

#### VPN Server (Optional)
  - Build enterprise internal VPN server
  - Remote work access support
  - Multiple VPN protocol options

---

### 3. Intelligent Traffic Splitting & Bandwidth Limiting

#### Port-based Traffic Splitting
  - Precise splitting by source/destination address/port
  - Support for TCP, UDP, ICMP protocols
  - Route traffic through designated lines
  - Schedule by day of week and time period
  - Batch manage group members
  - Batch import/export configurations

#### Domain-based Traffic Splitting
  - Route specific domains through designated lines
  - Import domain lists support
  - Custom DNS resolution server
  - Intelligent domestic/international traffic splitting

#### Bandwidth Limiting
  - Create bandwidth limiting templates
  - Limit by IP address
  - Limit by port
  - Limit by MAC address
  - Separate upload and download speed settings
  - Unified member management for shared rules

---

### 4. Real-time Monitoring

#### Line Monitoring
  - Real-time traffic display for each line
  - Clear line connection status
  - Historical traffic data viewing

#### Device Monitoring
  - View all connected devices
  - Display online/offline status
  - Real-time network speed per device
  - Cumulative traffic statistics
  - Connection count per device
  - Search by IP or MAC address

#### Connection Details
  - Real-time view of all network connections
  - Display source/destination addresses and ports
  - TCP connection status (established/pending/closed)
  - Real-time traffic statistics
  - Network resource usage ranking (by connections/traffic)
  - Multi-condition filtering queries

---

### 5. System Management

#### Device Mode Switching
  - **Main Router Mode**: Use as primary router
  - **Side Router Mode**: Work with main router, providing additional features
  - **AP Mode**: Use as wireless access point

#### System Upgrade
  - Online firmware upgrade
  - Automatic configuration backup before upgrade
  - Configuration preservation during upgrade

#### Backup & Restore
  - One-click configuration backup
  - Download backup files locally
  - Upload backup files to restore
  - Backup file management (delete/redownload)

#### Device Maintenance
  - Remote device restart
  - Factory reset
  - View device uptime

---

### 6. Operations Tools

#### Web Terminal
  - No software installation required
  - Access command line via browser
  - Full administrator privileges

#### Technical Support
  - Online problem feedback submission
  - Technical support ticket system

---

### 7. Dashboard

#### System Overview
  - Device model and firmware version
  - Device uptime
  - Current operation mode

#### Performance Monitoring
  - Real-time CPU usage
  - Memory usage status
  - Configurable refresh rate (1s/3s/5s)

#### Network Status
  - Real-time network speed (download/upload)
  - Peak speed records
  - Wired/Wireless/VPN connection count
  - Historical maximum connections

#### Interface Status
  - WAN/LAN interface status
  - IP address, subnet mask, gateway information
  - DNS server information
  - Cumulative upload/download traffic
  - Network quality check

#### Cloud Services (Optional)
  - Bind cloud management platform
  - Account binding or QR code binding
  - View public IP and ISP information

---

## Application Scenarios

### Enterprise Networks
  - Multiple broadband connections for improved stability
  - Department network segmentation for security
  - Department bandwidth limiting for critical business保障
  - VPN setup for remote work support

### Schools/Educational Institutions
  - Network zones for classrooms, offices, and dormitories
  - Student and faculty network isolation
  - Application-specific bandwidth limiting
  - Network usage monitoring

### Multi-line Environments
  - Intelligent traffic splitting by application
  - Domain-based splitting for domestic/international traffic
  - Multi-protocol VPN networking
  - Centralized network device management

---

## Product Features

### Usability
  - Intuitive web GUI
  - Clear functional categorization and navigation
  - Batch operations for efficiency
  - Configuration import/export support

### Multi-language Support
  - 简体中文
  - 繁體中文
  - English

### Theme Switching
  - Light theme
  - Dark theme

### Responsive Design
  - Adapts to desktop, tablet, and mobile screens
  - Card-based layout for clear information display

---

## Version Information

- **Product Name**: Echo.Pi
- **Version**: v1.0.0

---

## Contact Us

For issues or suggestions, please provide feedback through:
- Submit problem feedback
- Contact technical support
- Check help documentation

### Custom Firmware Services

We provide professional custom firmware development services tailored to your specific requirements. Our team can accommodate any form of firmware customization, including but not limited to:
- Custom feature development and integration
- Protocol support and optimization
- Hardware adaptation and driver development
- UI/UX customization and branding
- Performance optimization and security enhancements

Contact us to discuss your customization needs.

### Telegram Contact

Scan the QR code below to contact us on Telegram:

<img src="telegram-contact.jpg" width="200" height="200" />
