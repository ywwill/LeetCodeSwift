import Foundation

// 1.两数之和
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int : Int]()
    
    for (i, num) in nums.enumerated() {
        if let targetIndex = dict[target - num] {
            return [targetIndex, i]
        }
        
        dict[num] = i
    }
    fatalError("没有找到")
}
