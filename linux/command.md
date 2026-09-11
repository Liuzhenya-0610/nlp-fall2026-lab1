# Linux 命令与输出记录

### 1.文件行数、词数、字节数
    wc linux/data/alice.txt
输出：
    
    3384  26543 151191 linux/data/alice.txt
### 2.前10行和后10行
    head -n 10 linux/data/alice.txt
    tail -n 10 linux/data/alice.txt
输出：

    *** START OF THE PROJECT GUTENBERG EBOOK 11 ***

    [Illustration]




    Alice’s Adventures in Wonderland

    by Lewis Carroll
输出：

    childhood: and how she would gather about her other little children,
    and make _their_ eyes bright and eager with many a strange tale,
    perhaps even with the dream of Wonderland of long ago: and how she
    would feel with all their simple sorrows, and find a pleasure in all
    their simple joys, remembering her own child-life, and the happy summer
    days.

    THE END

    *** END OF THE PROJECT GUTENBERG EBOOK 11 ***

### 3.包含Alice(不区分大小写)的行数
    grep -i  -c "Alice" linux/data/alice.txt
输出：

    396

### 4.用find列出linux/下大于10KB的文件
    find linux/ -type f -size +10k
输出：

    linux/data/alice.txt

### 5.用du -sh查看linux/data/占用空间
    du -sh linux/data/
输出：

    152K    linux/data/
