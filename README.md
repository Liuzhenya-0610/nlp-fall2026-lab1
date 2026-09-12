# nlp-fall2026-lab1

姓名：刘桢雅
学号：202411681621

### 内容概览
此为自然语言处理课程的实验一仓库，包含了Linux命令实操、词频统计脚本、Git操作记录等内容。

### 实验内容与功能描述
- 任务A:Linux命令实操，编写词频统计脚本
- 任务B:Git版本控制，Git冲突解决演示
- 任务C:Markdown文档
- 任务D:Latex报告
  
### 复现步骤

```bash
# 1. 克隆仓库
git clone https://github.com/你的用户名/nlp-fall2026-lab1.git
cd nlp-fall2026-lab1

# 2. 下载语料
curl -o linux/data/alice.txt https://www.gutenberg.org/files/11/11-0.txt

# 3. 运行词频统计
chmod +x linux/wordcount.sh
./linux/wordcount.sh linux/data/alice.txt 20
