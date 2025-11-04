# 自定义字体文件夹

如果你想使用自定义字体，可以将字体文件（.ttf, .otf）放在这个文件夹中。

## 使用方法

1. 将字体文件复制到此文件夹
2. 在 `.typ` 文件中修改字体设置

### 示例

```typst
#set text(
  font: ("New Computer Modern", "YourCustomFont", "SimSun"),
  size: 11pt,
  lang: "zh",
)
```

## 推荐字体

### 中文字体
- **思源宋体** (Source Han Serif / Noto Serif CJK)
  - 下载：https://github.com/adobe-fonts/source-han-serif
  - 开源字体，适合学术文档

- **思源黑体** (Source Han Sans / Noto Sans CJK)
  - 下载：https://github.com/adobe-fonts/source-han-sans
  - 开源字体，适合现代风格

- **方正书宋** / **方正仿宋**
  - 需要购买商业授权

### 英文数学字体
- **Latin Modern Math**
  - 下载：https://www.gust.org.pl/projects/e-foundry/lm-math
  - 开源字体，适合数学公式

- **STIX Two Math**
  - 下载：https://github.com/stipub/stixfonts
  - 开源字体，专为科学出版设计

## 注意事项

⚠️ **字体版权**：请确保你使用的字体有合法授权。
- 个人学习使用通常可以使用免费字体
- 商业出版需要购买相应授权

⚠️ **字体文件大小**：中文字体文件通常较大（10-20MB），不建议提交到 Git 仓库。

## 当前配置

模板默认使用 Windows 系统自带字体：
- **SimSun** (宋体) - Windows 默认字体
- **Microsoft YaHei** (微软雅黑) - Windows 默认字体

这些字体已经足够日常使用，无需额外下载。

