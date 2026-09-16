# Linux 与 Git 速查笔记

> 本文档是自然语言处理课程实验一的学习笔记，涵盖 Linux 常用命令和 Git 基本操作。

---

## 一、Linux 命令

### 1.1 文件与目录操作

#### 1.1.1 查看目录内容

```bash
ls -la          # 列出所有文件（含隐藏文件），长格式
tree -L 2       # 树形展示两层目录结构
```

#### 1.1.2 创建与删除

```bash
mkdir -p a/b/c  # 一次创建多层目录
rm -r dir/      # 递归删除目录（危险操作，慎用）
```

### 1.2 文本处理

#### 1.2.1 查看文件内容

```bash
cat file.txt            # 全部输出
head -n 20 file.txt     # 前 20 行
tail -n 20 file.txt     # 后 20 行
less file.txt           # 分页查看
```

#### 1.2.2 文本搜索

```bash
grep -n "pattern" file.txt      # 显示匹配行及行号
grep -i "pattern" file.txt      # 忽略大小写
grep -r "TODO" .                # 递归搜索目录
grep -c "pattern" file.txt      # 统计匹配行数
```

### 1.3 管道与重定向

管道是 Linux 的核心哲学——将小工具串联起来解决复杂问题。

```bash
cat text.txt \
    | tr 'A-Z' 'a-z' \
    | tr -cs 'a-z' '\n' \
    | sort | uniq -c | sort -rn \
    | head -n 10
```

这是一个经典的词频统计管道，每一步的输出都是下一步的输入。

---

## 二、Git 基础

### 2.1 常用命令速查表

| 命令 | 作用 | 常用选项 | 示例 |
| --- | --- | --- | --- |
| `git init` | 初始化仓库 | 无 | `git init` |
| `git status` | 查看当前状态 | `-s`（简短格式） | `git status -s` |
| `git add` | 添加文件到暂存区 | `-p`（交互式选择） | `git add README.md` |
| `git commit` | 提交到本地仓库 | `-m`（指定消息）、`--amend`（修改上次提交） | `git commit -m "feat: 添加脚本"` |
| `git log` | 查看提交历史 | `--oneline`、`--graph`、`--all` | `git log --oneline --graph` |
| `git diff` | 查看改动 | `--staged`（查看暂存区改动） | `git diff HEAD` |
| `git switch` | 切换分支 | `-c`（创建并切换） | `git switch -c feature-x` |
| `git merge` | 合并分支 | `--abort`（放弃合并） | `git merge feature-x` |
| `git push` | 推送到远程 | `-u`（设置上游） | `git push -u origin main` |
| `git pull` | 拉取远程更新 | `--rebase`（变基方式） | `git pull` |

### 2.2 分支操作

```bash
git branch                  # 列出本地分支
git switch -c new-branch    # 创建并切换到新分支
git merge other-branch      # 合并其他分支到当前分支
git branch -d old-branch    # 删除已合并的分支
```

### 2.3 撤销操作

```bash
git restore file.txt                # 丢弃工作区改动
git restore --staged file.txt       # 取消暂存
git commit --amend                  # 修改最近一次提交
git revert <commit>                 # 安全撤销（生成新提交）
git reset --soft HEAD~1             # 撤销提交，保留改动
```

---

## 三、数学公式

NLP 中常用的链式法则：

行内公式：$P(w_1, w_2, \dots, w_n) = \prod_{i=1}^{n} P(w_i \mid w_1, \dots, w_{i-1})$

行间公式（贝叶斯公式）：

$$
P(y \mid \mathbf{x}) = \frac{P(\mathbf{x} \mid y) \cdot P(y)}{P(\mathbf{x})}
$$

---

## 四、任务清单

- [x] 完成 Linux 命令实操
- [x] 编写词频统计脚本
- [x] 完成 Git 冲突解决练习
- [x] 完成 Markdown 笔记
- [ ] 完成 LaTeX 报告

---

## 五、参考链接

- [Git 官方文档](https://git-scm.com/doc)（站外链接）
- [本仓库的 Linux 命令实操记录](../linux/commands.md)（仓库内相对链接）

---

## 六、长输出示例
本次实验中，任务A词频统计的输出结果如下：

<details>
<summary>点击展开：词频统计 Top 20 完整输出</summary>

```
   1653 the
    874 and
    729 to
    637 a
    595 it
    553 she
    546 i
    517 of
    462 said
    411 you
    399 alice
    370 in
    357 was
    315 that
    263 as
    248 her
    218 t
    212 at
    204 s
    193 on
```

</details>

## 七、添加图片
![NLP概念图](figures/nlp.png)
