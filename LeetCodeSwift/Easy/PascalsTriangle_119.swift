import Foundation

// 118. 杨辉三角，输入指定行

func getPascalsTriangleRow(_ rowIndex: Int) -> [Int] {
    if rowIndex == 0 {
        return [1]
    }
    
    var res: [Int] = [1]
    
    for _ in 0 ..< rowIndex {
        let nums1: [Int] = res + [0]
        
        let nums2 = [0] + res
        
        var row = [Int]()
        
        for i in 0 ..< nums1.count {
            
            row.append(nums1[i] + nums2[i])
        }
        
        res = row
    }
    
    return res
}

