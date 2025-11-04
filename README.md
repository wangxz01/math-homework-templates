# 数学作业通用模板

一个基于 Typst 的数学作业通用模板，适用于拓扑学、微分几何、实分析、泛函分析等数学课程。提供完整的定理环境和数学符号支持。

## 📝 项目简介

本模板提供了完整的数学作业排版解决方案，包含定理、证明、问题、解答等环境，以及常用的数学符号（特别是拓扑学符号：内部、闭包、边界、同胚等），支持中英文混排。

**只需修改标题就能用于任何数学课程！**

### 项目文件说明

- `homework_template.typ` - 通用作业模板，包含详细的使用说明和拓扑学示例
- `README.md` - 项目说明文档
- `.gitignore` - Git 忽略配置（自动忽略生成的 PDF 文件）
- `fonts/` - 自定义字体文件夹（可选，详见 `fonts/README.md`）

## ✨ 功能特点

- **通用数学作业模板**：只需修改标题即可用于任何数学课程
- **完整的定理环境**：定理、引理、定义、命题、推论、例子、注记
- **丰富的数学符号**：拓扑学专用符号（内部、闭包、边界、同胚等）
- **作业专用环境**：问题和解答环境，带有清晰的视觉区分
- **代码块支持**：语法高亮的代码块，支持 Python、MATLAB、R、C++ 等多种语言
- **附录功能**：轻松添加附录，用于代码、补充说明等内容
- **优雅的排版**：基于 Typst，支持数学公式自动编号
- **中英文混排**：完美支持中文字体和 LaTeX 风格的数学符号
- **零警告编译**：使用 Windows 系统自带字体，编译无警告
- **开箱即用**：包含拓扑学典型问题示例（内部、闭包、连续映射、紧性等）

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
   cp homework_template.typ my_homework.typ
   ```

3. **编辑作业内容**
   
   使用任意文本编辑器打开 `my_homework.typ`，修改标题页信息：
   ```typst
   #align(center)[
     #text(size: 20pt, weight: "bold")[拓扑学 作业 3]  // 改为你的课程名称
     
     #v(1em)
     
     #text(size: 14pt)[
       姓名：张三 \       // 改为你的姓名
       学号：20233000001  // 改为你的学号
     ]
     
     #v(0.5em)
     
     #text(size: 12pt)[
       提交日期：2025年11月4日  // 改为当前日期
     ]
   ]
   ```
   
   **课程名称示例**：
   - `拓扑学 作业 1`
   - `微分几何 作业 2`
   - `实分析 作业 3`
   - `泛函分析 作业 4`
   - `抽象代数 作业 5`

4. **编译生成 PDF**
   ```bash
   typst compile my_homework.typ
   ```
   
   或使用监视模式（自动重新编译）：
   ```bash
   typst watch my_homework.typ
   ```
   
   **注意**：编译时可能会看到字体警告，这是正常的。Typst 会自动使用系统可用的中文字体。生成的 PDF 不受影响。

## 📚 使用指南

### 基本结构

```typst
// 添加问题
#problem("1")[
  设 $topo(X, tau)$ 是拓扑空间，$A subset.eq X$。证明：
  $interior(A) subset.eq A subset.eq closure(A)$
]

// 添加解答
#solution[
  由内部的定义，$interior(A)$ 是包含于 $A$ 的所有开集的并，故 $interior(A) subset.eq A$。
  
  由闭包的定义，$closure(A)$ 是包含 $A$ 的最小闭集，故 $A subset.eq closure(A)$。
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

#### 4. 代码块环境

```typst
#code_block(
  ```python
  import numpy as np
  x = np.array([1, 2, 3])
  print(x)
  ```,
  caption: "代码 1: Python 示例"
)
```

支持的语言包括：`python`, `matlab`, `r`, `cpp`, `c`, `java`, `javascript`, `rust` 等。

#### 5. 附录环境

```typst
#appendix_title[附录]

#appendix_section[A. 数值计算代码][
  这里放置代码和说明...
  
  #code_block(
    ```python
    # 你的代码
    ```,
    caption: "代码说明"
  )
]

#appendix_section[B. 补充材料][
  其他补充内容...
]
```

附录会自动另起一页，适合放置代码、图表、详细推导等补充材料。

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

### 拓扑学专用符号

模板提供了以下拓扑学专用符号：

| 符号用法 | 效果 | 说明 |
|---------|------|------|
| `$interior(A)$` | Å | 集合A的内部 |
| `$closure(A)$` | A̅ | 集合A的闭包 |
| `$boundary(A)$` | ∂A | 集合A的边界 |
| `$derived(A)$` | A' | 集合A的导集 |
| `$X homeo Y$` | X ≃ Y | X与Y同胚 |
| `$A embed X$` | A ↪ X | A嵌入到X |
| `$topo(X, tau)$` | (X, τ) | 拓扑空间 |
| `$quotient(X, tilde)$` | X/~ | 商空间 |

示例：
```typst
设 $topo(X, tau)$ 是拓扑空间，$A subset.eq X$。
则 $interior(A)$ 是开集，$closure(A)$ 是闭集，
$boundary(A) = closure(A) inter closure(X without A)$。

若 $f: X arrow Y$ 是双射且连续，则 $f$ 是同胚 $X homeo Y$。
```

### 常用数学符号

- **集合运算**：`subset.eq` (⊆), `supset.eq` (⊇), `in` (∈), `union` (∪), `inter` (∩), `without` (∖)
- **空集与不等**：`emptyset` (∅), `eq.not` (≠)
- **箭头**：`arrow` (→), `Arrow` (⇒), `arrow.r.long` (⟶), `arrow.l.long` (⟵)
- **逻辑**：`forall` (∀), `exists` (∃), `and` (∧), `or` (∨), `not` (¬)
- **关系**：`lt.eq` (≤), `gt.eq` (≥), `equiv` (≡), `approx` (≈), `prop` (∝)
- **希腊字母**：`alpha` (α), `beta` (β), `gamma` (γ), `delta` (δ), `epsilon` (ε), `theta` (θ), `tau` (τ), `sigma` (σ), `omega` (ω)

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

## 📖 示例

### 模板中的示例问题（拓扑学）

模板包含三个拓扑学典型问题，展示了完整的使用方法：

1. **拓扑空间的基本性质**：内部、闭包、边界的关系
2. **连续函数与同胚**：连续映射保持闭包，同胚的性质
3. **紧性与连续映射**：紧空间的像、Hausdorff空间中的性质

### 适用课程

这个模板可以用于任何数学课程，只需：
1. 修改标题页的课程名称
2. 删除或修改示例问题
3. 编写你自己的作业内容

**适用课程包括但不限于**：
- 🔷 拓扑学（点集拓扑、代数拓扑）
- 📐 微分几何
- 📊 实分析 / 复分析
- 🎯 泛函分析
- 🔢 抽象代数
- 📈 微分方程
- 🎲 概率论与数理统计
- 💻 数值分析（支持代码块，可展示算法实现）
- 🔬 计算数学（附录功能适合附上代码和计算结果）

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
- 本模板适用于各类数学课程的作业撰写

## 💡 数学课程推荐教材

### 拓扑学
- 《点集拓扑讲义》 - 熊金城
- 《拓扑学基础》 - 尤承业  
- Topology (2nd Edition) - James R. Munkres
- General Topology - Stephen Willard

### 其他课程
根据你的课程需要，可以在模板中添加相应的数学符号和环境。模板已经包含了大部分通用的数学环境（定理、引理、定义等）。

## 🔧 常见问题

### 字体配置

模板默认使用 Windows 系统自带字体（SimSun 宋体、Microsoft YaHei 微软雅黑），**编译无警告**。

**如需使用自定义字体**：
1. 将字体文件（.ttf 或 .otf）放入 `fonts/` 文件夹
2. 在模板文件中修改字体设置：
   ```typst
   #set text(
     font: ("New Computer Modern", "YourFontName", "SimSun"),
     ...
   )
   ```

推荐开源中文字体：
- **思源宋体**（Source Han Serif）- 适合学术文档
- **思源黑体**（Source Han Sans）- 适合现代风格

详见 `fonts/README.md` 文件。

### 符号更新说明
本模板使用 Typst 最新语法：
- 集合交集使用 `inter`（旧版本为 `sect`）
- 偏导数符号使用 `partial`（旧版本为 `diff`）

### PDF 生成位置
编译后的 PDF 文件会生成在与 `.typ` 文件相同的目录下，文件名相同。

---

**祝你数学作业顺利！📐✏️🎓**

# 模板功能说明

## 📚 完整功能列表

### 1. 基础环境

#### 定理类环境
- `#theorem(title: "定理 X.X")[内容]` - 定理（蓝色）
- `#lemma(title: "引理 X.X")[内容]` - 引理（橙色）
- `#definition(title: "定义 X.X")[内容]` - 定义（绿色）
- `#proposition(title: "命题 X.X")[内容]` - 命题（红色）
- `#corollary(title: "推论 X.X")[内容]` - 推论（紫色）
- `#example(title: "例 X")[内容]` - 例子（棕色）
- `#remark(title: "注 X")[内容]` - 注记（灰色）

#### 证明环境
- `#proof[证明内容]` - 自动添加"证明："和证毕符号 ∎

#### 作业环境
- `#problem("题号")[题目内容]` - 问题环境（灰色背景）
- `#solution[解答内容]` - 解答环境

### 2. 拓扑学专用符号

| 命令 | 输出 | 说明 |
|------|------|------|
| `interior(A)` | Å | 集合的内部 |
| `closure(A)` | A̅ | 集合的闭包 |
| `boundary(A)` | ∂A | 集合的边界 |
| `derived(A)` | A' | 导集 |
| `homeo` | ≃ | 同胚符号 |
| `embed` | ↪ | 嵌入符号 |
| `topo(X, tau)` | (X, τ) | 拓扑空间表示 |
| `quotient(X, sim)` | X/~ | 商空间 |

**使用方式**：在数学模式中使用，例如 `$interior(A)$`

### 3. 代码块功能 ✨ 新增

```typst
#code_block(
  ```语言
  代码内容
  ```,
  caption: "代码说明（可选）"
)
```

**特点**：
- 灰色背景，带边框
- 使用等宽字体（Consolas 或 Courier New）
- 支持语法高亮
- 可添加标题说明

**支持的语言**：
- Python
- MATLAB
- R
- C/C++
- Java
- JavaScript
- Rust
- 其他 Typst 支持的语言

### 4. 附录功能 ✨ 新增

```typst
#appendix_title[附录]

#appendix_section[A. 章节标题][
  章节内容...
]

#appendix_section[B. 另一章节][
  更多内容...
]
```

**特点**：
- 自动另起一页
- 居中的附录标题
- 可包含多个章节
- 适合放置代码、详细推导、补充材料等

### 5. 页面设置

- **纸张**：A4
- **页边距**：左右 2.5cm，上下 3cm
- **字体**：
  - 英文/数学：New Computer Modern
  - 中文：SimSun（宋体）或 Microsoft YaHei（微软雅黑）
  - 代码：Consolas 或 Courier New
- **字号**：11pt（正文），9pt（代码）
- **页码**：阿拉伯数字

## 🎯 适用场景

### 纯数学课程（不需要代码）
- 拓扑学
- 微分几何  
- 实分析/复分析
- 泛函分析
- 抽象代数

**使用方式**：删除或注释掉附录部分即可

### 需要代码的课程
- 数值分析
- 计算数学
- 数值线性代数
- 数学建模

**使用方式**：在附录中添加代码块展示算法实现

### 混合类型
理论证明在正文，代码和计算结果放在附录

## 💡 使用建议

1. **纯理论作业**：只使用定理、证明、问题、解答环境
2. **包含计算**：使用代码块展示算法，使用附录组织代码
3. **数值实验**：正文写理论，附录A放代码，附录B放结果分析
4. **不需要的功能**：直接删除或注释掉即可

## 📝 快速模板

### 纯理论作业模板
```typst
#problem("1")[题目]
#solution[
  #theorem[...]
  #proof[...]
]
```

### 包含代码的作业模板
```typst
#problem("1")[题目]
#solution[
  理论分析...
  具体实现见附录 A。
]

#appendix_title[附录]
#appendix_section[A. 算法实现][
  #code_block(```python
  # 算法代码
  ```, caption: "算法实现")
]
```

## 🔧 自定义

所有环境的颜色、样式都可以在模板文件中修改：
- 定理环境颜色：第 38-86 行
- 代码块样式：第 103-118 行
- 附录样式：第 120-142 行

---

**完整功能，灵活使用！** 📐✨

