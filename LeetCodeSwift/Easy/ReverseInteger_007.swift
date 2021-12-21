import Foundation

// 7.整数反转
func reverse(_ x: Int) -> Int {
    // 判断正负
    let sign = x < 0 ? -1 : 1
    var num = abs(x)
    
    var ans = 0
    
    while (num != 0) {
        ans = ans * 10 + num % 10
        num = num / 10
    }
    
    // 0x7fffffff -> 2的31次方
    if ans <= 0x7fffffff {
        return sign * ans
    }else {
        return 0
    }
}
