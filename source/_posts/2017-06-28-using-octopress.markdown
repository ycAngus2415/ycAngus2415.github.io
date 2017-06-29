---
layout: post
title: "Using Octopress"
date: 2017-06-28 22:41:59 +0800
comments: true
categories: 
---

这篇文章参考了生命之氢

[reference]: http://shengmingzhiqing.com/blog/octopress-lean-modification-1.html/	"生命之氢"
[reference]: http://shengmingzhiqing.com/blog/octopress-lean-modification-1.html/	" reference from here"

# 新建一个github.io

1. 创建了域名后千万不要在其他地方引用，不然会很麻烦，push 需要pull， pull 前需要branch, 反正就是各种麻烦事，把它当做最干净的时候用来写博客可以免去很多麻烦
2. 新建后只需要ssh ， 连密码都不用，当然最好是有一个git客户端，但是千万别把github.io 从客户端放到本地，一定要从octopress。

# 何必远程仓库

我们再刚开始在github是建立了一个远程仓库的，第一次使用的时候是还没有将远程仓库和本地仓库合并的，这是两个不同的仓库，所以这时候需要先使用

~~~shell
cd _deploy
git pull origin master --allow-unrelated-histories
~~~



# 更换octopress 主题，

1. 先把source 中atom.xml 和robots.txt中的nil 改成null

# 添加上公式

需要mathjx支持，不知道能不能有用。


$$
f(x) = \sin(x)\int_0^1\sum \cos(x)dx
$$


显然是没有用的。$$\sin(x)$$

$$f(x) = \int^10_0\sin(x)dx$$

但是修改最后一句javascript这样的代码后就可以了，主要原因是mathjax的那个source更新了。加载非常慢，我是放在script.html中的，千万别放在head.html中，**会后悔的**，加载特别慢。另外，如果翻墙，公式加载也非常慢，直接访问网站会快很多。



```Javascript
<!-- mathjax config similar to math.stackexchange -->
<script type="text/x-mathjax-config">
MathJax.Hub.Config({
  jax: ["input/TeX", "output/HTML-CSS"],
  tex2jax: {
    inlineMath: [ ['$', '$'] ],
    displayMath: [ ['$$', '$$']],
    processEscapes: true,
    skipTags: ['script', 'noscript', 'style', 'textarea', 'pre', 'code']
  },
  messageStyle: "none",
  "HTML-CSS": { preferredFont: "TeX", availableFonts: ["STIX","TeX"] }
});
</script>
<script type="text/javascript" async
  src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.1/MathJax.js?config=TeX-MML-AM_CHTML">
</script>
```



另外，在_config.yml中markdown的解释器换了后，要注意这时候的语法有一点不一样，就是公式中$$ 必须单独成行，代码块前后面也必须要有空行。

据说代码块也是有问题的，我要一起测试测试



```python
import torch
import torch.nn
class g(nn.Module):
    def __init__(self):
        super(g, self).__init__()
        
```



确实，好像没有高亮。

原来是主题的原因，不过比较简洁，还是能够接受的，

## 插入图片

插入的图片放在/octopress/source/images/下，在引用的时候

```
![](images/image.img)
```

