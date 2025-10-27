# 数学本科课程作业通用模板

一个基于 Typst 的数学课程作业模板，适用于数学、统计学等理科专业的作业撰写。

## 📝 项目简介

本模板提供了完整的数学作业排版解决方案，包含定理、证明、问题、解答等常用环境，支持中英文混排，让你专注于内容而非格式。

## ✨ 功能特点

- **完整的定理环境**：定理、引理、定义、命题、推论、例子、注记
- **作业专用环境**：问题和解答环境，带有清晰的视觉区分
- **优雅的排版**：基于 Typst，支持数学公式自动编号
- **中英文混排**：完美支持中文字体和 LaTeX 风格的数学符号
- **易于定制**：简洁的标题页，方便填写课程信息
- **开箱即用**：提供详细的使用示例

## 🚀 快速开始

### 安装 Typst

首先需要安装 Typst 编译器：

**macOS (使用 Homebrew):**
```bash
brew install typst
```

**Linux:**
```bash
# 从 GitHub Releases 下载二进制文件
# https://github.com/typst/typst/releases
```

**Windows:**
从 [Typst 官网](https://typst.app/) 下载安装包

或者使用在线版本：[Typst Web App](https://typst.app/)

### 使用模板

1. **下载模板**
   ```bash
   git clone https://github.com/wangxz01/math-homework-templates.git
   cd math-homework-templates
   ```

2. **复制模板文件**
   ```bash
   cp math_homework_template.typ my_homework.typ
   ```

3. **编辑作业内容**
   
   使用任意文本编辑器打开 `my_homework.typ`，修改标题页信息：
   ```typst
   #align(center)[
     #text(size: 20pt, weight: "bold")[微分几何 作业 3]
     
     #v(1em)
     
     #text(size: 14pt)[
       姓名：张三 \
       学号：20233000001
     ]
     
     #v(0.5em)
     
     #text(size: 12pt)[
       提交日期：2024年10月27日
     ]
   ]
   ```

4. **编译生成 PDF**
   ```bash
   typst compile my_homework.typ
   ```
   
   或使用监视模式（自动重新编译）：
   ```bash
   typst watch my_homework.typ
   ```

## 📚 使用指南

### 基本结构

```typst
// 添加问题
#problem("1")[
  证明：若 $f: X arrow Y$ 是连续函数，则...
]

// 添加解答
#solution[
  根据连续函数的定义，我们有...
]
```

### 可用环境

#### 1. 定理类环境

```typst
// 定理
#theorem(title: "定理 1.1")[
  若 $f$ 是连续函数，则...
]

// 引理
#lemma(title: "引理 2.1")[
  对于任意 $epsilon > 0$...
]

// 定义
#definition(title: "定义 3.1")[
  称集合 $X$ 是紧的，如果...
]

// 命题
#proposition(title: "命题 4.1")[
  设 $A subset.eq B$，则...
]

// 推论
#corollary(title: "推论 5.1")[
  由定理 1.1 可得...
]

// 例子
#example(title: "例 1")[
  考虑函数 $f(x) = x^2$...
]

// 注记
#remark(title: "注 1")[
  需要注意的是...
]
```

#### 2. 证明环境

```typst
#proof[
  首先，根据假设...
  
  其次，由引理 2.1 知...
  
  因此，命题得证。
]
```

#### 3. 问题和解答环境

```typst
#problem("1.1")[
  证明柯西序列是收敛的。
]

#solution[
  设 ${x_n}$ 是柯西序列...
  
  #proof[
    详细证明过程...
  ]
]
```

### 数学公式

#### 行内公式
```typst
这是一个行内公式 $integral_0^1 x^2 dif x = 1/3$。
```

#### 行间公式（带编号）
```typst
$ f(x) = sum_(n=0)^infinity (x^n)/(n!) = e^x $
```

#### 多行公式
```typst
$ 
f(x) &= x^2 + 2x + 1 \
     &= (x + 1)^2
$
```

### 常用数学符号

- 集合：`subset.eq`, `supset.eq`, `in`, `union`, `sect`
- 箭头：`arrow`, `Arrow`, `arrow.r.long`, `arrow.l.long`
- 逻辑：`forall`, `exists`, `and`, `or`, `not`
- 运算：`sum`, `product`, `integral`, `partial`, `nabla`
- 关系：`lt.eq`, `gt.eq`, `equiv`, `approx`, `prop`
- 希腊字母：`alpha`, `beta`, `gamma`, `delta`, `epsilon`, `theta`, `lambda`, `mu`, `pi`, `sigma`, `omega`

完整的 Typst 数学符号参考：[Typst Math 文档](https://typst.app/docs/reference/math/)

## 🎨 自定义样式

### 修改颜色

在模板文件中，各个环境使用不同的颜色。你可以自定义颜色：

```typst
// 修改定理环境颜色
#let theorem(title: "定理", content) = {
  theorem_box(title, content, color: rgb("#1f77b4"))  // 修改这里的颜色代码
}
```

### 修改字体大小

```typst
#set text(
  font: ("New Computer Modern", "Songti SC", "STSong", "Heiti SC"),
  size: 11pt,  // 修改全局字体大小
  lang: "zh",
)
```

### 修改页边距

```typst
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 3cm),  // 修改页边距
  numbering: "1",
)
```

## 📖 示例作业

模板中包含了三个示例问题，展示了如何：
- 使用问题和解答环境
- 在解答中嵌套使用定理、定义等环境
- 编写数学公式和证明

查看模板文件的示例部分获取更多灵感！

## 🤝 贡献

欢迎提交 Issue 和 Pull Request 来改进这个模板！

如果你有任何建议或发现了问题，请：
1. 在 GitHub 上提交 Issue
2. Fork 本项目并提交 PR
3. 联系作者

## 📄 许可证

本项目采用 MIT 许可证。你可以自由使用、修改和分发本模板。

## 📮 联系方式

- GitHub: [@wangxz01](https://github.com/wangxz01)
- 项目地址: [math-homework-templates](https://github.com/wangxz01/math-homework-templates)

## 🙏 致谢

- 感谢 [Typst](https://typst.app/) 项目提供的优秀排版系统
- 本模板适用于各类数学课程：微分几何、拓扑学、实分析、复分析、抽象代数、泛函分析等

---

**祝你作业愉快！📐✏️**

