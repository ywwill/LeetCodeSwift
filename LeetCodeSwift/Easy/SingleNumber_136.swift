import Foundation

// 136. 只出现一次的数字

func singleNumber(_ nums: [Int]) -> Int {

    var arr = [Int]()
    
    for num in nums {
        if arr.contains(num) {
            arr.removeAll{ $0 == num }
        }else {
            arr.append(num)
        }
    }
    
    return arr[0]
}
