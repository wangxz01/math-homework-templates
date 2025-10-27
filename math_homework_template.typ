// 数学本科课程作业通用模板
#set document(title: "", author: "wxz")

// 页面设置
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 3cm),
  numbering: "1",
)

// 字体设置
// 英文使用 New Computer Modern，中文使用系统默认中文字体
#set text(
  font: ("New Computer Modern", "Songti SC", "STSong", "Heiti SC"),
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
// 请在下方修改课程名称、作业标题、姓名和学号
#align(center)[
  #text(size: 20pt, weight: "bold")[课程名称 作业 X]
  
  #v(1em)
  
  #text(size: 14pt)[
    姓名：张三 \
    学号：20233000000
  ]
  
  #v(0.5em)
  
  #text(size: 12pt)[
    提交日期：2024年1月1日
  ]
]

#v(2em)

// ==================== 作业内容 ====================

// 示例问题 1
#problem("1")[
  这里写第一道题的题目内容。
  
  可以包含数学公式：$integral_0^infinity e^(-x^2) dif x = sqrt(pi)/2$
]

#solution[
  这里写第一道题的解答。
  
  可以使用多行公式：
  $ f(x) = sum_(n=0)^infinity (x^n)/(n!) $
  
  也可以引用定理、引理等环境。
]

#v(1em)

// 示例问题 2
#problem("2")[
  这里写第二道题的题目内容。
]

#solution[
  这里写第二道题的解答。
  
  // 在解答中使用定理环境
  #theorem(title: "定理 1.1")[
    设 $f: X arrow Y$ 是连续函数，则...
  ]
  
  // 使用证明环境
  #proof[
    根据定义，我们有...
    
    因此结论成立。
  ]
]

#v(1em)

// 示例问题 3
#problem("3")[
  这里写第三道题的题目内容。
]

#solution[
  // 在解答中使用定义环境
  #definition(title: "定义 2.1")[
    称集合 $X$ 是紧的，如果...
  ]
  
  基于以上定义，我们可以...
]

// ==================== 使用说明 ====================
// 
// 1. 修改标题页信息：
//    - 将"课程名称 作业 X"改为具体的课程和作业编号
//    - 填写正确的姓名、学号和日期
//
// 2. 添加问题：
//    #problem("题号")[题目内容]
//
// 3. 添加解答：
//    #solution[解答内容]
//
// 4. 使用其他环境：
//    #theorem()[...]     // 定理
//    #lemma()[...]       // 引理
//    #definition()[...]  // 定义
//    #proposition()[...] // 命题
//    #corollary()[...]   // 推论
//    #example()[...]     // 例子
//    #remark()[...]      // 注
//    #proof()[...]       // 证明
//
// 5. 删除或注释掉示例问题和本使用说明，开始编写你的作业！

