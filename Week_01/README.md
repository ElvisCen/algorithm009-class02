学习笔记
#26. 删除排序数组中的重复项

 给定一个排序数组，你需要在 原地 删除重复出现的元素，使得每个元素只出现一次，返回移除后数组的新长度。
 不要使用额外的数组空间，你必须在 原地 修改输入数组 并在使用 O(1) 额外空间的条件下完成。


双指针法
   1、 i指针  j指针，从0开始出发 ，
   2、如果 nums[i] == num[j] ，j 向前 +1 ，i 不改变
   3、如果 nums[i] != num[j] ,j 向前 +1 ,i + 1
   4‘到最后，数组中前 i + 1个元素即为不重复的元素
   
    ````
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count == 0 {
            return 0
        }
       var i = 0
        for j in 0..<nums.count {
            if nums[i] != nums[j] {
                i += 1
                nums[i] = nums[j]
            }
        }
        return i + 1
    }


