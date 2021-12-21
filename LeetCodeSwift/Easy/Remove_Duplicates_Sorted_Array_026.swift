import Foundation

// 26. 删除有序数组中的重复项
func removeDuplicates(_ nums: inout [Int]) -> Int {
    
    if nums.count <= 1 {
        return nums.count
    }
    
    var resultLength = 0
    
    // 从下标 1 开始循环
    for index in 1 ..< nums.count {
        if nums[index] != nums[resultLength] {
            resultLength += 1
            nums[resultLength] = nums[index]
        }
    }
    
    return resultLength + 1
}
