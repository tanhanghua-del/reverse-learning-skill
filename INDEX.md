# 《反向学习》技能地图

## 一句话结构

八张卡对应书的五项修炼：**一破（反向学习）→ 二立世界观（参考答案）→ 三选材（聚焦）→ 四加工（模式）→ 五结算（迁移）**。顺序不可乱：没有「破」，你会在旧习惯里执行新方法；没有「参考答案」，你会把新方法当成新的标准答案。

## 技能依赖图

| 卡片 | 依赖 | 关系类型 |
|------|------|----------|
| [unlearning-audit](cards/unlearning-audit/SKILL.md) | 无 | 起点（破） |
| [three-step-answer](cards/three-step-answer/SKILL.md) | 无（可直接用） | 世界观工具 |
| [reference-review](cards/reference-review/SKILL.md) | `three-step-answer` | 依赖：先分类，再审校 |
| [interactive-learning](cards/interactive-learning/SKILL.md) | `reference-review` | 依赖：双方都带着审校过的答案才叫互动 |
| [focus-six-lenses](cards/focus-six-lenses/SKILL.md) | `three-step-answer` | 依赖：「实用」镜头需要先能判断什么对我真有约束 |
| [pattern-pyramid](cards/pattern-pyramid/SKILL.md) | `focus-six-lenses` | 依赖：聚焦决定喂给模式的素材 |
| [pattern-tree](cards/pattern-tree/SKILL.md) | `pattern-pyramid` | 依赖：先有单条模式，才谈结构 |
| [four-question-learning](cards/four-question-learning/SKILL.md) | `pattern-pyramid` | 依赖：四问的「想」就是提炼模式 |

```
unlearning-audit ──────────────┐
                               ├─→ (贯穿：替代旧习惯)
three-step-answer ─→ reference-review ─→ interactive-learning
        │
        └─→ focus-six-lenses ─→ pattern-pyramid ─→ pattern-tree
                                      │
                                      └─→ four-question-learning
```

## 推荐学习路径

**第一周（先止血）**
1. `unlearning-audit` —— 只做一次，找出你当前最大的一个失效信念。不做完这一步，后面全是往漏水的桶里倒水。

**第二周（换判断方式）**
2. `three-step-answer` —— 练「看情况 + 分类」，直到你能对一个模糊问题给出两类型、两因果。
3. `reference-review` —— 拿一篇你原本打算照搬的文章练三道审校。

**第三到四周（换输入方式）**
4. `interactive-learning` —— 改造你的下一次听课／读书：事前建构 + 只找「我原来错在哪」。
5. `four-question-learning` —— 每次输入后强制走完四问，重点卡在第 4 步「三改」和第 6 步「触发信号」。

**第二个月（换组织方式）**
6. `focus-six-lenses` —— 清一次学习清单，设 90 天护栏。
7. `pattern-pyramid` —— 拿你手头最熟的三个案例，提炼成一条模式句。
8. `pattern-tree` —— 定树干，把已有的模式挂上去。卡片不足 30 条就先停，回头积累。

## 推荐组合

| 组合 | 适用场景 | 包含技能 |
|------|----------|----------|
| 换岗急救包 | 到新岗位 30 天内，旧经验失灵 | `unlearning-audit` + `three-step-answer` + `focus-six-lenses` |
| 培训转化包 | 刚上完一门课／读完一本书，要交行动项 | `four-question-learning` + `interactive-learning` + `reference-review` |
| 方法评审包 | 要决定「要不要引入某个大厂方法论」 | `three-step-answer` + `reference-review` + `four-question-learning` |
| 体系搭建包 | 想把零散经验变成可讲的方法论 | `focus-six-lenses` + `pattern-pyramid` + `pattern-tree` |
| 全链闭环 | 系统性重装学习方式（8–12 周） | 全部八张，按推荐路径顺序 |

## 使用禁忌（跨卡通用）

1. **不要在无替代动作时执行「破」**——`unlearning-audit` 的硬前提。
2. **不要在样本少于 3 个时提炼模式**——`pattern-pyramid` 的硬前提。
3. **不要在卡片少于 30 条时搭树**——`pattern-tree` 的硬前提。
4. **不要把「用得太宽泛」当成「已落地」**——`four-question-learning` 的第四问必须窄到一周内可发生。
5. **不要在需要标准作业程序的场景用「参考答案」思维**——医疗、航空、合规流程直接执行标准。
