学习笔记
 # 第三周学习笔记  

 ## 范型递归、树的递归

递归的实现、特性以及思维要点


关于树的解法一般都是递归

1.  他的节点和定义本身就是用递归的定义做成的

2.  树的本身，有重复性和自相似性

二叉搜索树的特征 ，左子树小于根节点，右子树大于根节点，且具有重复性

树的遍历：

前序 中序 后序 层序

 **递归 - 循环**

通过函数体来进行的循环



**递归代码模版**

![image](https://raw.githubusercontent.com/ElvisCen/img/master/QQ20200607-153953%402x.png?token=AEJPTN26GTPHSQ3353AN4S263SR72)



**思维要点分析**

1. 不要进行人肉递归（除非初学的时候，否则不要画递归树）

2. 找到最近最简方法，将其拆解成可重复解决的问题（重复子问题） （if ..else .. 递归）

3. 数学归纳法



### 习题讲解 

爬楼梯，括号生成等问题

[爬楼梯](https://leetcode-cn.com/problems/climbing-stairs/)

需要抽象出 问题的重复性

\#1 ： 1

\#2 ： 2

\#3 :f(1) + f(2) 思考有没有漏算的情况和重复计算的情况 （互斥。所有可能性都包含）

\#4 f(2) + f(3) 



\#f(n) = f(n - 1) + f(n - 2) 斐波拉契数列

[括号生成](https://leetcode-cn.com/problems/generate-parentheses/)

根据递归思维初步处理

 分析不合法情况（剪枝）

Left 随时可以加 ，只要别超标

Right 左个数 > 右个数

剪枝后 提前去掉不合法的内容

![image](https://raw.githubusercontent.com/ElvisCen/img/master/QQ20200607-154056%402x.png?token=AEJPTN4C5DWS6DPRETV33RS63SR2O)







## 分治、回朔

分治和回朔本质上就是递归
查找最近重复性，和最优重复性

分治 ：复杂问题分解问多个子问题，透过现象看本质

回溯 ； 组合子问题的结果

分治代码模版   
​      ![image](https://raw.githubusercontent.com/ElvisCen/img/master/QQ20200607-163419%402x.png?token=AEJPTNZHNCXE6GEQE6AMRGC63STWC)  

怎样拆分 

怎样合成

中间的结果如何做质量控制，和质量保证



回溯 ：不懂的在每一层中去试 
![image](https://raw.githubusercontent.com/ElvisCen/img/master/QQ20200607-154508%402x.png?token=AEJPTN4WBHCDGNYZYXIRNKC63SSKK)



