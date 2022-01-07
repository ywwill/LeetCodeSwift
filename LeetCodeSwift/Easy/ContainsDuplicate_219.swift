import Foundation

// 219. 存在重复元素||

func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
    var dict = [Int : Int]()
    
    for (i, num) in nums.enumerated() {
        if let value = dict[num] {
            if i - value <= k {
                return true
            }
        }
        
        dict[num] = i
    }
    return false
}
