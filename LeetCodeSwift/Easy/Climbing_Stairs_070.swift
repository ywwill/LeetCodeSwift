import Foundation

// 70. 爬楼梯
// f(x) 表示爬到第x级台阶的方案数，考虑最后一步可能跨了一级台阶，也可能跨了两级台阶，
// 所以我们可以列出 f(x)=f(x−1)+f(x−2)
// 爬到第 x 级台阶的方案数是爬到第 x−1 级台阶的方案数和爬到第 x−2 级台阶的方案数的和

func climbStairs(_ n: Int) -> Int {
    
    var p = 0, q = 0, r = 1
    
    for _ in 1...n {
        p = q
        q = r
        r = p + q
    }
    
    return r
}
