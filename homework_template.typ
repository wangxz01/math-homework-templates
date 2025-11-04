// 数学作业通用模板（适用于拓扑学、微分几何、实分析等课程）
#set document(title: "数学作业", author: "wxz")

// 页面设置
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 3cm),
  numbering: "1",
)

// 字体设置
// 英文使用 New Computer Modern，中文使用系统默认中文字体
// Windows: SimSun (宋体) 或 Microsoft YaHei (微软雅黑)
// macOS/Linux: 如需其他字体，可添加 "Songti SC", "STSong", "Noto Serif CJK SC"
#set text(
  font: ("New Computer Modern", "SimSun", "Microsoft YaHei"),
  size: 11pt,
  lang: "zh",
)

// 段落设置
#set par(
  justify: true,
  leading: 0.65em,
  first-line-indent: 2em,
)

// 标题设置
#set heading(numbering: "1.1")
#show heading: it => {
  set text(weight: "bold")
  it
  v(0.5em)
}

// 数学公式设置
#set math.equation(numbering: "(1)")

// 定义定理环境样式
#let theorem_box(title, content, color: blue) = {
  block(
    fill: color.lighten(95%),
    stroke: 1pt + color,
    radius: 4pt,
    inset: 10pt,
    width: 100%,
  )[
    #text(weight: "bold", fill: color)[#title]
    #v(0.3em)
    #content
  ]
}

// 定理环境
#let theorem(title: "定理", content) = {
  theorem_box(title, content, color: rgb("#1f77b4"))
}

// 引理环境
#let lemma(title: "引理", content) = {
  theorem_box(title, content, color: rgb("#ff7f0e"))
}

// 定义环境
#let definition(title: "定义", content) = {
  theorem_box(title, content, color: rgb("#2ca02c"))
}

// 命题环境
#let proposition(title: "命题", content) = {
  theorem_box(title, content, color: rgb("#d62728"))
}

// 推论环境
#let corollary(title: "推论", content) = {
  theorem_box(title, content, color: rgb("#9467bd"))
}

// 例子环境
#let example(title: "例子", content) = {
  theorem_box(title, content, color: rgb("#8c564b"))
}

// 注记环境
#let remark(title: "注", content) = {
  theorem_box(title, content, color: rgb("#7f7f7f"))
}

// 证明环境
#let proof(content) = {
  block(
    inset: (left: 1em, right: 0em, top: 0.5em, bottom: 0.5em),
  )[
    #text(weight: "bold")[证明：]
    #content
    #h(1fr) $qed$
  ]
}

// ==================== 代码和附录环境 ====================

// 代码块环境
#let code_block(content, language: none, caption: none) = {
  block(
    fill: rgb("#f5f5f5"),
    stroke: 1pt + rgb("#e0e0e0"),
    radius: 3pt,
    inset: 10pt,
    width: 100%,
  )[
    #if caption != none [
      #text(weight: "bold", size: 10pt)[#caption]
      #v(0.3em)
    ]
    #set text(font: ("Consolas", "Courier New"), size: 9pt)
    #content
  ]
}

// 附录标题
#let appendix_title(title) = {
  pagebreak()
  set text(size: 18pt, weight: "bold")
  align(center)[
    #title
  ]
  v(1em)
}

// 附录章节
#let appendix_section(title, content) = {
  block(
    inset: (top: 1em, bottom: 0.5em),
  )[
    #text(size: 14pt, weight: "bold")[#title]
  ]
  content
}

// ==================== 拓扑学专用符号和命令 ====================

// 拓扑学常用符号（可在文档中使用）
// 使用方法：直接在数学模式中使用，例如 $interior(A)$, $closure(B)$

// 内部（interior）
#let interior(x) = $accent(#x, \u{02DA})$  // 上圆圈

// 闭包（closure）
#let closure(x) = $overline(#x)$

// 边界（boundary）
#let boundary(x) = $partial #x$

// 导集（derived set）
#let derived(x) = $#x'$

// 同胚符号
#let homeo = $tilde.equiv$

// 嵌入符号
#let embed = $arrow.hook$

// 拓扑空间对 (X, tau)
#let topo(X, tau) = $(#X, #tau)$

// 商空间
#let quotient(X, sim) = $#X \/ #sim$

// 问题环境
#let problem(number, content) = {
  block(
    fill: rgb("#f0f0f0"),
    stroke: 1pt + gray,
    radius: 4pt,
    inset: 10pt,
    width: 100%,
  )[
    #text(weight: "bold", size: 12pt)[问题 #number]
    #v(0.3em)
    #content
  ]
}

// 解答环境
#let solution(content) = {
  block(
    inset: (left: 1em, right: 0em, top: 0.5em, bottom: 1em),
  )[
    #text(weight: "bold")[解：]
    #content
  ]
}

// ==================== 正文开始 ====================

// 标题页
// 请修改课程名称、作业编号、姓名、学号和日期
#align(center)[
  #text(size: 20pt, weight: "bold")[课程名称 作业 X]
  
  #v(1em)
  
  #text(size: 14pt)[
    姓名：张三 \
    学号：20233000000
  ]
  
  #v(0.5em)
  
  #text(size: 12pt)[
    提交日期：2025年11月4日
  ]
]

#v(2em)

// 提示：将上方的"课程名称"改为你的课程，例如：
// - 拓扑学 作业 1
// - 微分几何 作业 2
// - 实分析 作业 3
// - 泛函分析 作业 4

// ==================== 作业内容 ====================

// 示例问题 1：拓扑空间的基本性质
#problem("1")[
  设 $topo(X, tau)$ 是一个拓扑空间，$A subset.eq X$。证明：
  
  (1) $interior(A) subset.eq A subset.eq closure(A)$
  
  (2) $boundary(A) = closure(A) inter closure(X without A)$
  
  (3) 若 $A$ 是开集，则 $interior(A) = A$；若 $A$ 是闭集，则 $closure(A) = A$
]

#solution[
  (1) 首先证明 $interior(A) subset.eq A$：
  
  #definition(title: "定义（内部）")[
    集合 $A$ 的内部 $interior(A)$ 定义为包含于 $A$ 的所有开集的并集，即
    $ interior(A) = union.big {U in tau : U subset.eq A} $
  ]
  
  由定义，$interior(A)$ 中的每个开集都包含于 $A$，故 $interior(A) subset.eq A$。
  
  接下来证明 $A subset.eq closure(A)$：
  
  由闭包的定义，$closure(A)$ 是包含 $A$ 的最小闭集，因此 $A subset.eq closure(A)$。
  
  (2) 证明略（提示：使用边界的定义 $boundary(A) = closure(A) without interior(A)$）
  
  (3) 若 $A$ 是开集，则 $A in tau$ 且 $A subset.eq A$，由内部的定义知 $A subset.eq interior(A)$。
  结合 (1) 的结果，得 $interior(A) = A$。
  
  闭集的情况类似可证。
]

#v(1em)

// 示例问题 2：连续函数与同胚
#problem("2")[
  设 $f: X arrow Y$ 是拓扑空间之间的映射。
  
  (1) 证明：$f$ 连续当且仅当对 $X$ 中任意子集 $A$，有 $f(closure(A)) subset.eq closure(f(A))$。
  
  (2) 若 $f$ 是同胚，证明 $f(closure(A)) = closure(f(A))$。
]

#solution[
  (1) 先证明必要性：
  
  #theorem(title: "定理（连续映射保持闭包）")[
    设 $f: X arrow Y$ 是连续函数，$A subset.eq X$，则 $f(closure(A)) subset.eq closure(f(A))$。
  ]
  
  #proof[
    设 $y in f(closure(A))$，则存在 $x in closure(A)$ 使得 $f(x) = y$。
    
    任取 $y$ 的开邻域 $V subset.eq Y$。由于 $f$ 连续，$f^(-1)(V)$ 是 $X$ 中的开集。
    
    因为 $x in closure(A)$ 且 $f^(-1)(V)$ 是 $x$ 的开邻域，所以 $f^(-1)(V) inter A eq.not emptyset$。
    
    取 $a in f^(-1)(V) inter A$，则 $f(a) in V inter f(A)$，故 $V inter f(A) eq.not emptyset$。
    
    这表明 $y in closure(f(A))$，因此 $f(closure(A)) subset.eq closure(f(A))$。
  ]
  
  充分性的证明：假设对任意 $A subset.eq X$，有 $f(closure(A)) subset.eq closure(f(A))$。
  设 $B$ 是 $Y$ 中的闭集，令 $A = f^(-1)(B)$...（证明略）
  
  (2) 若 $f$ 是同胚，则 $f^(-1)$ 也连续。由 (1) 知：
  $ f(closure(A)) subset.eq closure(f(A)) $
  $ f^(-1)(closure(f(A))) subset.eq closure(f^(-1)(f(A))) = closure(A) $
  
  因此 $closure(f(A)) subset.eq f(closure(A))$，结合第一个不等式得 $f(closure(A)) = closure(f(A))$。
]

#v(1em)

// 示例问题 3：紧性与连续映射
#problem("3")[
  设 $f: X arrow Y$ 是连续映射，$X$ 是紧空间。证明：
  
  (1) $f(X)$ 是 $Y$ 的紧子集
  
  (2) 若 $Y$ 是 Hausdorff 空间且 $f$ 是双射，则 $f$ 是同胚
]

#solution[
  (1) 首先回顾紧性的定义：
  
  #definition(title: "定义（紧空间）")[
    称拓扑空间 $X$ 是紧的，如果 $X$ 的每个开覆盖都有有限子覆盖。
    即若 ${U_alpha}_(alpha in I)$ 是 $X$ 的开覆盖（$X = union.big_(alpha in I) U_alpha$），
    则存在有限个指标 $alpha_1, ..., alpha_n$ 使得 $X = union.big_(i=1)^n U_(alpha_i)$。
  ]
  
  #proof[
    设 ${V_beta}_(beta in J)$ 是 $f(X)$ 的开覆盖，即 $f(X) subset.eq union.big_(beta in J) V_beta$，
    其中每个 $V_beta$ 是 $Y$ 中的开集。
    
    由于 $f$ 连续，对每个 $beta in J$，$f^(-1)(V_beta)$ 是 $X$ 中的开集。
    
    注意到 ${f^(-1)(V_beta)}_(beta in J)$ 构成 $X$ 的开覆盖：
    $ X = f^(-1)(f(X)) subset.eq f^(-1)(union.big_(beta in J) V_beta) = union.big_(beta in J) f^(-1)(V_beta) $
    
    由于 $X$ 紧，存在有限个指标 $beta_1, ..., beta_m$ 使得
    $ X = union.big_(i=1)^m f^(-1)(V_(beta_i)) $
    
    因此
    $ f(X) = f(union.big_(i=1)^m f^(-1)(V_(beta_i))) subset.eq union.big_(i=1)^m V_(beta_i) $
    
    这表明 $f(X)$ 是紧的。
  ]
  
  (2) 要证 $f$ 是同胚，只需证 $f^(-1): f(X) arrow X$ 连续。
  
  #lemma(title: "引理")[
    设 $f: X arrow Y$ 是连续双射，$X$ 紧，$Y$ Hausdorff，则 $f$ 是同胚。
  ]
  
  提示：证明 $f$ 是闭映射即可（紧空间中的闭集在连续映射下的像仍紧，
  而 Hausdorff 空间中的紧集是闭的）。
]

// ==================== 附录示例 ====================

#appendix_title[附录]

#appendix_section[A. 数值计算代码][
  本次作业中使用的 Python 代码如下：
  
  #code_block(
    ```python
    import numpy as np
    import matplotlib.pyplot as plt

    def compute_metric(X, Y):
        """计算度量空间中两点的距离"""
        return np.linalg.norm(X - Y)

    # 定义拓扑空间
    X = np.array([1, 2, 3, 4, 5])
    print(f"拓扑空间 X = {X}")
    ```,
    caption: "代码 A.1: 度量计算示例"
  )
  
  #v(1em)
  
  使用 MATLAB 进行数值验证：
  
  #code_block(
    ```matlab
    % 计算序列的极限
    x = 1:100;
    y = 1./x;
    limit_val = lim(y, x, inf);
    fprintf('序列极限: %f\n', limit_val);
    ```,
    caption: "代码 A.2: MATLAB 极限计算"
  )
]

#appendix_section[B. 补充说明][
  这里可以添加一些补充的说明、推导过程或参考资料。
  
  #remark[
    在实际计算中，我们使用了数值精度 $epsilon = 10^(-6)$。
  ]
]

// 注意：如果不需要附录，删除上面的附录部分即可

// ==================== 使用说明 ====================
// 
// 1. 修改标题页信息：
//    - 将"课程名称"改为你的课程（如：拓扑学、微分几何、实分析等）
//    - 将"作业 X"中的 X 改为具体的作业编号
//    - 填写正确的姓名、学号和日期
//
// 2. 添加问题：
//    #problem("题号")[题目内容]
//
// 3. 添加解答：
//    #solution[解答内容]
//
// 4. 使用定理类环境：
//    #theorem(title: "定理 X.X")[...]     // 定理
//    #lemma(title: "引理 X.X")[...]       // 引理
//    #definition(title: "定义 X.X")[...]  // 定义
//    #proposition(title: "命题 X.X")[...] // 命题
//    #corollary(title: "推论 X.X")[...]   // 推论
//    #example(title: "例 X")[...]         // 例子
//    #remark(title: "注 X")[...]          // 注
//    #proof[...]                          // 证明
//
// 5. 拓扑学专用符号：
//    - 内部：$interior(A)$               // Å（A上加圈）
//    - 闭包：$closure(A)$                // A̅（A上加横线）
//    - 边界：$boundary(A)$               // ∂A
//    - 导集：$derived(A)$                // A'
//    - 同胚：$X homeo Y$                 // X ≃ Y
//    - 嵌入：$A embed X$                 // A ↪ X
//    - 拓扑空间对：$topo(X, tau)$        // (X, τ)
//    - 商空间：$quotient(X, tilde)$      // X/~
//
// 6. 常用拓扑学符号：
//    - 集合运算：subset.eq, supset.eq, union, inter, without
//    - 空集：emptyset
//    - 不等于：eq.not
//    - 任意、存在：forall, exists
//    - 映射：arrow (→), arrow.l.long (⟵), arrow.r.long (⟶)
//    注：使用 inter 表示交集（旧版本为 sect，已弃用）
//
// 7. 添加代码块：
//    #code_block(
//      ```python
//      代码内容
//      ```,
//      caption: "代码说明"
//    )
//    
//    支持的语言：python, matlab, r, cpp, c, java, javascript, rust 等
//
// 8. 添加附录：
//    #appendix_title[附录]
//    #appendix_section[A. 标题][内容...]
//    #appendix_section[B. 标题][内容...]
//    
//    附录会自动另起一页
//
// 9. 删除或注释掉示例问题、附录示例和本使用说明，开始编写你的作业！

