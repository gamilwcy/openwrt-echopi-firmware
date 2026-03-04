## Echo.Pi 网关固件

### 版本信息
- **产品名称**: Echo.Pi
- **固件版本**: v1.0.0

###  download Links

#### Legacy BIOS 启动模式
- `Echo.Pi-Legacy-*.iso` - 适用于传统 BIOS 启动的老式设备

#### UEFI 启动模式
- `Echo.Pi-UEFI-*.iso` - 适用于 UEFI 启动的现代设备

### 安装说明

1. **下载镜像**
   - 根据设备启动模式选择合适的 ISO 文件
   - 校验文件完整性（建议添加 SHA256）

2. **制作启动盘**
   - 使用 Rufus (Windows) 或 Etcher (跨平台) 写入 U 盘
   - 或使用 `dd` 命令 (Linux/Mac):
     ```bash
     sudo dd if=Echo.Pi-UEFI-*.iso of=/dev/sdX bs=4M status=progress
     ```

3. **安装固件**
   - 插入 U 盘到目标设备
   - 从 U 盘启动
   - 按屏幕提示完成安装

### 更新日志

#### 新增功能
- 企业级 Web 管理界面
- 多语言支持（简体中文、繁体中文、English）
- 多 WAN 接入与负载均衡
- VPN 客户端（支持 6 种协议）
- 智能流量分流与限速
- 实时网络监控

#### 已知问题
- 无

### 技术支持

如有问题或建议，请：
- 提交 Issue: https://github.com/gamilwcy/openwrt-echopi-firmware/issues
- 查看文档：README.md / README_zh.md
