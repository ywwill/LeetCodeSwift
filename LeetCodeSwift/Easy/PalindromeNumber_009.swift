import Foundation

// 9. 回文数,将数字的逆序和原来的数字进行比较
func isPalindrome(_ x: Int) -> Bool {
    var z = x
    var y = 0
    while z > 0 {
        y = y * 10 + z % 10
        z = z / 10
    }
    
    return x == y
}
