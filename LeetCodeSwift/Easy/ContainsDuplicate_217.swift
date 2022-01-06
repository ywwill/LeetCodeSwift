import Foundation

// 217. 存在重复元素

func containsDuplicate(_ nums: [Int]) -> Bool {
    let sortArray = nums.sorted()
    
    for i in 0..<sortArray.count-1 {
        if sortArray[i] == sortArray[i+1] {
            return true
        }
    }
    return false
}

func containsDuplicate2(_ nums: [Int]) -> Bool {
   
    var dict = [Int : Int]()
    
    for (i, num) in nums.enumerated() {
        if let _ = dict[num] {
            return true
        }
        
        dict[num] = i
    }
    return false
}
