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

### A5. 分析题
#### 1. 排在最前面的都是些什么词？它们承载多少实际语义？
   
答：Top20中排在前面的绝大多数都是功能词，例如 the and to of in was that as at on，它们几乎不承载实际语义。其次是人称代词，有it she you her，承载指代人称的语义。还有名词一个“alice”，动词一个“said”。

#### 2. 这类词在 NLP 中通常叫什么？为什么很多任务里要把它们去掉，又有哪些任务不能去掉？

答：①这类词在NLP中叫停用词。去掉的原因是这类词在文本分类，信息检索等任务中，频率极高但区分度低，保留会增加噪声和计算量。去掉的话，可以提升模型效率。
②在机器翻译、句法分析任务中，不能去掉，因为停用词承载语法结构，去掉会破坏句子结构。

#### 3. 当前的"分词"方式（`tr -cs 'a-z' '\n'`）有什么缺陷？举出至少两个它会处理错的例子（提示：缩写、连字符、专有名词、数字）。

答：①缩写词被拆散了，高频词中出现“t”，因为类似“isn't”的缩写结构被错误拆分，丢失否定含义；
②数字被删除，所有数字，例如“Chapter 1"，中的“1”，都被丢弃了