import Foundation

// 88. 合并两个有序数组

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    
    var mCount = m
    var nCount = n
    
    while mCount > 0 && nCount > 0 {
        if nums1[mCount-1] > nums2[nCount-1] {
            nums1[mCount + nCount - 1] = nums1[mCount-1]
            mCount = mCount - 1
        }else {
            nums1[mCount + nCount - 1] = nums2[nCount-1]
            nCount = nCount - 1
        }
    }
    
    // 将nums2剩余的元素赋值到nums1的前面
    if nCount > 0 {
        nums1[0 ..< nCount] = nums2[0 ..< nCount]
    }
}

// 测试
//let m = 3, n = 3
//
//var nums1 = [2,5,6,0,0,0]
//
//let nums2 = [1,1,3]
//
//merge(&nums1, m, nums2, n)
//
//print(nums1)
