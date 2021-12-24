//
//  MySqrt_069.swift
//  LeetCodeSwift
//
//  Created by edy on 2021/12/24.
//

import Foundation

// 69. Sqrt(x) 非负整数 x ，计算并返回 x 的 算术平方根

func mySqrt(_ x: Int) -> Int {
    var low = 0
    var high = x
    
    while low <= high {
        let mid = (high + low) / 2
        let v = mid * mid
        
        if v < x {
            low = mid + 1
        }else if v > x {
            high = mid - 1
        }else {
            return mid
        }
    }
    
    return high
}
