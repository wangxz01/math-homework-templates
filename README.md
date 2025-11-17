# 数学作业模板

基于 Typst 的通用数学作业模板，适用于各类数学课程（优化理论、实分析、拓扑学、微分几何等）。

## 快速开始

### 1. 安装 Typst

**macOS:**
```bash
brew install typst
```

**其他系统:** 从 [Typst 官网](https://typst.app/) 下载安装

### 2. 使用模板

1. 修改 `homework_template.typ` 中的标题页信息（课程名称、姓名、学号、日期）
2. 删除示例题目，添加你的题目和解答
3. 编译生成 PDF：
   ```bash
   typst compile homework_template.typ
   ```

## 使用方法

### 添加问题

```typst
#problem("1")[
  题目内容...
]
```

### 添加解答

```typst
#solution[
  解答内容...
]
```

### 可用环境

- `#theorem(title: "定理 X")[...]` - 定理
- `#lemma(title: "引理 X")[...]` - 引理
- `#definition(title: "定义 X")[...]` - 定义
- `#proof[...]` - 证明
- `#remark[...]` - 注记

### 数学符号

- 集合运算：`subset.eq`, `union`, `inter`, `in`
- 箭头：`arrow`, `arrow.r.long`
- 希腊字母：`alpha`, `beta`, `lambda`, `mu`, `sigma`
- 其他：`nabla`, `partial`, `infinity`, `sqrt`

## 文件说明

- `homework_template.typ` - 主模板文件
- `homework_template.pdf` - 编译生成的 PDF
