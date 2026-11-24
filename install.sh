#!/usr/bin/env bash
# 把本仓库装成一个 Agent 技能。
# 用法：
#   ./install.sh                      # 装到 ~/.workbuddy/skills/reverse-learning
#   ./install.sh /path/to/skills-dir  # 装到指定技能目录下
set -euo pipefail

SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEST_ROOT="${1:-$HOME/.workbuddy/skills}"
DEST="$DEST_ROOT/reverse-learning"

echo "源:   $SRC"
echo "目标: $DEST"

if [ -d "$DEST" ]; then
  printf '目标已存在，覆盖？[y/N] '
  read -r ans
  case "$ans" in
    y|Y) rm -rf "$DEST" ;;
    *) echo "已取消。"; exit 1 ;;
  esac
fi

mkdir -p "$DEST"
cp "$SRC/SKILL.md" "$DEST/"
cp -R "$SRC/cards" "$DEST/"
for f in BOOK_OVERVIEW.md COUNTERVIEWS.md DIALECTICS.md DIGEST.md \
         FURTHER_READING.md GLOSSARY.md INDEX.md REJECTED.md test-prompts.json; do
  [ -f "$SRC/$f" ] && cp "$SRC/$f" "$DEST/"
done

echo
echo "已安装。校验："
printf '  SKILL.md      %s\n' "$([ -f "$DEST/SKILL.md" ] && echo OK || echo MISSING)"
printf '  cards/        %s 张\n' "$(find "$DEST/cards" -name SKILL.md | wc -l | tr -d ' ')"
printf '  附带文档      %s 个\n' "$(cd "$DEST" && ls *.md | grep -v '^SKILL.md$' | wc -l | tr -d ' ')"
echo
echo "入口说明：Agent 只需读 $DEST/SKILL.md，其余文件按需加载。"
