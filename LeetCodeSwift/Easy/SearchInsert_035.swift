import Foundation

// 35.搜索插入位置
// 二分查找

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var left = 0
    var right = nums.count - 1
    
    while left <= right {
        let mid = (right - left) / 2 + left
        
        if nums[mid] == target {
            return mid
        }else if nums[mid] > target {
            right = mid - 1
        }else {
            left = mid + 1
        }
    }
    
    return left
}
