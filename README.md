# 反向学习 · 学习方法论技能包

把刘澜《反向学习：学习力的五项修炼》（机械工业出版社，2025 年 3 月，388 页）编译成 **8 张可调用的技能卡**，供 AI Agent（Claude Code / WorkBuddy 等支持 `SKILL.md` 约定的环境）按需加载。

它不是一个「读书笔记仓库」，而是一组能落到动作的操作卡：每张卡自带 **R（原文/要点）→ I（释义）→ A（案例与场景）→ E（可执行步骤）→ B（边界与最强反驳）** 五段。

## 它解决什么

成年人最常遇到的三种失灵：

1. **旧经验突然不管用**，但说不清哪里不对（换岗、晋升、跨行业）。
2. **学了很多用不上**，培训完写不出行动项，笔记全是摘抄。
3. **越学越焦虑**，收藏夹越堆越高，能拿出手的没几样。

书的答案是链条式的：**先破习惯 → 换判断方式 → 换选材方式 → 换组织方式 → 以迁移结算**。本包按这条链拆成八张卡。

## 八张卡与路由

| 症状 | 卡 | 在干什么 |
|---|---|---|
| 换岗后老办法不灵；同一个坑踩第三次；听懂了做不到 | [`cards/unlearning-audit/`](cards/unlearning-audit/SKILL.md) | 四坏习惯体检：把「常识」降级为假设，换成新动作 |
| 两个专家说法相反；没有标准答案；给建议怕给错 | [`cards/three-step-answer/`](cards/three-step-answer/SKILL.md) | 洞见分类三步：看情况 → 分类 → 定位 |
| 这套方法论能照搬吗；成功案例值得学吗 | [`cards/reference-review/`](cards/reference-review/SKILL.md) | 假设线—对立线—合成线，权威降为带条件的参考 |
| 听完就忘；记笔记没用；开会吸收不了 | [`cards/interactive-learning/`](cards/interactive-learning/SKILL.md) | 事前建构 + 守破离 + ICAP 升级 |
| 学不完；什么都想学；不知道该学什么 | [`cards/focus-six-lenses/`](cards/focus-six-lenses/SKILL.md) | 六镜头筛到少数几项 + 90 天护栏 |
| 案例一堆说不出规律；换行业经验带不走 | [`cards/pattern-pyramid/`](cards/pattern-pyramid/SKILL.md) | 五层自测 + 提炼「带条件的模式句」 |
| 笔记几百条互不相连；讲不出体系 | [`cards/pattern-tree/`](cards/pattern-tree/SKILL.md) | 树干 + 存同求异 + 跨域找同 |
| 学完用不上；读书笔记只有摘抄 | [`cards/four-question-learning/`](cards/four-question-learning/SKILL.md) | 听—想—变—用四问，逼出一个动作 |

三条常用链路：

- **刚学完就要用**：`interactive-learning` → `four-question-learning`
- **要沉淀自己的方法论**：`focus-six-lenses` → `pattern-pyramid` → `pattern-tree`
- **要判断该不该跟**：`three-step-answer` → `reference-review`

## 安装

```bash
git clone <this-repo> reverse-learning
mkdir -p ~/.workbuddy/skills/reverse-learning
cp -R reverse-learning/{SKILL.md,cards,*.md,test-prompts.json} ~/.workbuddy/skills/reverse-learning/
```

或直接跑仓库里的脚本：

```bash
./install.sh          # 默认装到 ~/.workbuddy/skills/reverse-learning
./install.sh /path/to/skills-dir
```

装好后，Agent 读到的入口是 `SKILL.md`，其余文件按需加载（渐进披露），不会一次性灌满上下文。

## 设计上的两个取舍

**1. 单入口 + 8 张子卡，而不是 8 个独立技能。**
八个独立技能会占满路由表，而且「学了用不上 / 提炼规律」这类触发词必然互相撞车。做成一个路由层，命中后只读一张卡。

**2. 调用有三条硬约束**（写在 `SKILL.md` 里，不是建议）：

- **不承诺跨领域迁移。** Barnett & Ceci (2002) 指出迁移成败取决于情境距离；Sala & Gobet (2017) 认为远迁移很少发生。被问「能不能用到别的行业」时，回答边界。
- **「反向学习」= 替换，不是删除。** Howells & Scholderer (2016, *Management Learning* 47(4)) 系统复核认为「先删除旧知识」缺乏实证支持；Bouton (2004) 显示旧学习会随情境回归。任何「忘掉旧知识」都要改写成「在同一触发场景装一条优先调用的新动作」。
- **书中内容必须标来源档位。** 见下方「诚实声明」。

## 诚实声明（重要）

- **本包没有原文引文。** 蒸馏时未获得全书全文，依据是目录、出版社内容简介与多份互相独立的读书笔记。凡属复述，卡内均标注「要点复述，非原文」；口诀类短句因多份笔记一致按较高可信度处理，但**未核对原书页码**。
- **本书的核心口号被实证削弱。** 详见 [`DIALECTICS.md`](DIALECTICS.md) 与 [`COUNTERVIEWS.md`](COUNTERVIEWS.md)：5 条核心主张 × 8 条对立观点，三档来源分标，外部文献均可通过 DOI 复核。
- **这是对一本书的方法论重构，不是原书替代品。** 书中的案例与数据，请以原书注释为准。对原书内容的权利归作者与出版方所有；本仓库仅包含对方法论的转述与再组织，与其无隶属关系。若作者或出版方对内容有异议，请开 Issue，会及时调整或下架。

## 包内文件

| 文件 | 用途 |
|---|---|
| `SKILL.md` | Agent 入口：路由表、三段式使用规则、三条硬约束 |
| `cards/` | 8 张卡，命中后只读一张 |
| `INDEX.md` | 卡间依赖图、学习路径、跨卡禁忌 |
| `DIGEST.md` | 10 分钟精华导读（面向人） |
| `BOOK_OVERVIEW.md` | Adler 四步分析：结构、概念、论证链、批判 |
| `COUNTERVIEWS.md` | 核心主张 × 对立观点对照 |
| `DIALECTICS.md` | 争议定性、双方论据审计、条件化结论 |
| `GLOSSARY.md` | 术语词典（20 条） |
| `FURTHER_READING.md` | 四象限书目 |
| `REJECTED.md` | 淘汰候选与来源排除记录 |
| `test-prompts.json` | 回归测试题（含诱饵题、路由歧义题） |
| `index.html` | 单页总览（可直接用 GitHub Pages 托管） |

## 许可

MIT，见 [`LICENSE`](LICENSE)；来源与第三方声明见 [`NOTICE.md`](NOTICE.md)。
