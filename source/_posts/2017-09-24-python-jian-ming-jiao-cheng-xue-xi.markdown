---
layout: post
title: "python 简明教程学习"
date: 2017-09-24 16:17:08 +0800
comments: true
categories: learning
---

# python 简明教程

想着从头摸清python，发现学习不扎实，只能这样了。

## print('hello world'),print默认换行

## 基础

- 整数

- 浮点数

- 字符串

  - 字符串格式化输出format()

  - ~~~python
    print('{0:.3f}'.format(1.2))#输出三位小数点
    print('{0:_^11}'.format('hello'))#两遍补齐，使得输出长度为11位
    print('{name}wrote{book}'.format(name='yangchao', book='a byte of python ')) #指定参数的方式格式化
    ~~~

  - print默认输出换行，使用end指定末尾空白

  - ~~~python
    print('a', end='')
    print('b', end='')
    ~~~

  - 或者指定空格结尾

  - ~~~python
    print('a', end=' ')
    print('b', end=' ')
    print('c')
    ~~~

- 转义序列（escape sequence)

- 原始字符串，即使转义也不认为转义了，就是把字符串原样输出

- 变量

  - 标识符，首字母字符或下划线，其他字符可以是数字
  - 数据类型
  - 对象，python将程序中的任何内容统称为对象

- 如果\在末尾，默认换行

- 物理行和逻辑行

- 缩进



## 运算符和表达式

表达式可以拆分为运算符（operators)和操作数（operands)

* 运算符
* 赋值和运算的快捷方式
* 优先级



## 控制流

* if 

  * 通过input获得输入

  * ~~~python
    x = input('enter your name: ')#先打印一句话然后可以输入并将值赋予x
    ~~~

* while语句也有else

* for循环也有else，基本都是循环结束后输出

* range是一个生成器，一次生成一个

* break，如果中断了一个for货while循环，else块也不会执行

* Continue



## 函数

可重复使用的程序片段

* 函数参数
* 局部变量，作用域（scope）
* Global
* 默认参数值
* 关键字参数
* 可变参数，* 元组，**字典
* return
* pass
* DocStrings，文档字符串



## 模块

可以使用C语言来撰写库，sys.argv的第一个参数时文件名，后面才是运行脚本的参数

~~~python
import sys#文件名为module_using_sys.py
print('the command line arguments are :')
for i in sys.argv:
  print(i)
~~~

打印为：

~~~shell
$ python module_using_sys.py we are arguments
The command line arguments are:
module_using_sys.py
we 
are
arguments
~~~



* 按字节码编译的.pyc文件

  * 导入模块代价高昂，创建按字节码编译的文件，是将python转化为中间形式的文件

* from .. import 语句

* 模块的\_\_name\_\_

  * 当模块第一次被倒入时，它所包含的代码将被执行，模块的名称帮我们以不同的方式运行

  * ~~~python
    if __name__ == '__main__':
      print('this program is being run by itself')
     else:
      print('this program is imported from another module')
    ~~~

  * ​

* 编写自己的模版，避免使用from mymodule import *,python的一大指导原则是明了胜过晦涩

* dir函数，返回对象所定义的名称列表

* 包。变量位于函数内部，函数位于模版内部，模版在包中


## 数据结构

* 列表
* 元组
* 字典
* 序列
* 集合
* 引用，直接赋值是同一个对象，切片操作就是复制一个新的对象

~~~python
x = ['xiaoming', 'er', 'dir']
y = x
print(y)#
y.remove('er')
print(y, x)#此时y和x都删除了一个元素，因为他们是同一个对象
z = x[:]#这时候就不是同一个对象了，复制了一个新的对象
~~~

* 更多关于字符串的东西
	* 字符串也是一个对象，有自己的方法
	* find找到某些子字符串
	* starwith查看是否由某些子字符串开头

以上都是一些基本知识，下面开始讲一些编写程序的东西

##解决问题
#问题
* 首先是问题的提出，明白自己要达到的目的
* 其次是分析，要达到目的需要做些什么
* 然后列出所需要实现的一些模块


本文题：一个备份文件的程序
分析：

	* 选择备份文件
	* 备份操作
	* 备份保存
	* 备份文件重读
	* 备份文件恢复
	

	


