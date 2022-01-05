import Foundation

// 169. 多数元素
// 由于一定存在，所以只需排序，然后取length/2的元素
func majorityElement(_ nums: [Int]) -> Int {
    return nums.sorted()[nums.count/2]
}
