## 动态规划

### 复习

**递归代码模版(Swift版)**

```swift
func recur(level:Int,param:Int){
  //terminator 终止条件
  if level > Max_LEVEL{
     // process result
    return ;
  }
  //process current logic 处理当前层的逻辑
  process(level,param)
 
  //drill down  下探到下一层
  recur(level:level + 1,newParam)
  //restore current status 恢复当前层状态
}
```



**分治代码模版(swift版)**

```swift
func devide_conquer(problem,param1,param2,...){
  //recursion terminator 递归终止条件
  for problem == nil{
    print(result)
    return
  }
  //prepare data //拆分子问题
  data = prepareData(problem)
  subproblem = split_problem(problem,data)
  //conquer subproblems //调子问题的递归函数
  subresult1 = devide_conquer(subproblems[0],p1,...)
  subresult2 = devide_conquer(subproblems[1],p1,...)
  subresult3 = devide_conquer(subproblems[2],p1,...)
  ...
  // process and generate the final result 合并结果
  
  //revert the current level states 恢复当前层状态
  
}
```



> 1.人肉递推很累
>
> 2.找到最近最简的方法，将其分解成可重复解决的问题
>
> 3.数学归纳法思维(抵制人肉递归的方法)

**寻找重复性--计算机指令值**



## 动态规划定义

分治 + 最优子结构

>In both contexts it refers to simplifying a complicated problem by breaking it down into simpler sub-problems in a [recursive](https://en.wikipedia.org/wiki/Recursion) manner. While some decision problems cannot be taken apart this way, decisions that span several points in time do often break apart recursively.

dp和分治是有关联的

1. 缓存

2. 淘汰次优解

**关键点**

1. 动态规划和递归分治没有根本上的区别(关键看有无最优的子结构)
2. **共性：找到重复的子问题**
3. 差异性：最优子结构、中途可以淘汰次优解


