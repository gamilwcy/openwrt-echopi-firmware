#!/bin/bash

# Echo.Pi Release Script
# 用于创建 GitHub Release 的辅助脚本

set -e

VERSION=""
LEGACY_ISO=""
UEFI_ISO=""
NOTES=""

# 颜色输出
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

info() { echo -e "${GREEN}[INFO]${NC} $1"; }
warn() { echo -e "${YELLOW}[WARN]${NC} $1"; }
error() { echo -e "${RED}[ERROR]${NC} $1"; exit 1; }

# 显示帮助
show_help() {
    cat << EOF
Echo.Pi Release Script

用法: $0 -v <版本> -l <Legacy ISO> -u <UEFI ISO> [-n <更新日志>]

选项:
  -v, --version     版本号 (例如：v1.0.0)
  -l, --legacy      Legacy BIOS ISO 文件路径
  -u, --uefi        UEFI ISO 文件路径
  -n, --notes       更新日志文件路径 (默认：RELEASE_NOTES.md)
  -d, --draft       创建草稿 Release (不立即发布)
  -h, --help        显示此帮助信息

示例:
  $0 -v v1.0.0 -l Echo.Pi-Legacy-202603032132-v1.iso -u Echo.Pi-UEFI-202603032136-v1.iso
  $0 -v v1.0.0 -l *.iso -u *.iso -d  # 创建草稿

EOF
    exit 0
}

# 解析参数
DRAFT=false
while [[ $# -gt 0 ]]; do
    case $1 in
        -v|--version) VERSION="$2"; shift 2;;
        -l|--legacy) LEGACY_ISO="$2"; shift 2;;
        -u|--uefi) UEFI_ISO="$2"; shift 2;;
        -n|--notes) NOTES="$2"; shift 2;;
        -d|--draft) DRAFT=true; shift;;
        -h|--help) show_help;;
        *) error "未知选项：$1";;
    esac
done

# 验证必填参数
[[ -z "$VERSION" ]] && error "版本号必填 (-v)"
[[ -z "$LEGACY_ISO" ]] && error "Legacy ISO 文件必填 (-l)"
[[ -z "$UEFI_ISO" ]] && error "UEFI ISO 文件必填 (-u)"
[[ -z "$NOTES" ]] && NOTES="RELEASE_NOTES.md"

# 检查文件是否存在
[[ ! -f "$LEGACY_ISO" ]] && error "Legacy ISO 文件不存在：$LEGACY_ISO"
[[ ! -f "$UEFI_ISO" ]] && error "UEFI ISO 文件不存在：$UEFI_ISO"
[[ ! -f "$NOTES" ]] && warn "更新日志文件不存在：$NOTES，将使用默认描述"

# 检查 gh 是否安装
if ! command -v gh &> /dev/null; then
    error "需要安装 GitHub CLI (gh)，请前往 https://cli.github.com/ 安装"
fi

# 检查是否已登录
if ! gh auth status &> /dev/null; then
    info "请先登录 GitHub: gh auth login"
    gh auth login
fi

# 检查是否已存在该 tag
if git rev-parse -q --verify "refs/tags/$VERSION" &> /dev/null; then
    error "版本 tag 已存在：$VERSION"
fi

# 创建 tag
info "创建 tag: $VERSION"
git tag -a "$VERSION" -m "Release $VERSION"

# 准备发布
DRAFT_FLAG=""
[[ "$DRAFT" == true ]] && DRAFT_FLAG="--draft"

info "创建 GitHub Release..."
gh release create "$VERSION" \
    --title "Echo.Pi $VERSION" \
    --notes-file "$NOTES" \
    $DRAFT_FLAG \
    "$LEGACY_ISO" \
    "$UEFI_ISO"

# 推送 tag
info "推送 tag 到远程仓库..."
git push origin "$VERSION"

info "Release 创建成功！"
info "查看：https://github.com/gamilwcy/openwrt-echopi-firmware/releases/tag/$VERSION"
