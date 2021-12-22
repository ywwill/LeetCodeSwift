import Foundation
import AppKit

// 66.加一
// 取数组最后一位数字加 1，如果需要进位，前一个数字继续加 1。如果第一个数字还需要再进位，在第一个位置插入 1.
func plusOne(_ digits: [Int]) -> [Int] {
    var digits = digits
    var plusIndex = digits.count - 1
    var shouldPlus = true
    repeat {
        guard plusIndex >= 0 else {
            digits.insert(1, at: 0)
            shouldPlus = false
            continue
        }
        
        if digits[plusIndex] == 9 {
            digits[plusIndex] = 0
            
        } else {
            digits[plusIndex] += 1
            shouldPlus = false
        }
        plusIndex -= 1
    } while(shouldPlus)
    return digits
}
