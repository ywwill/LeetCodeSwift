import Foundation

// 118. 杨辉三角
// 思路：每一行首位和末尾 + 元素 0，然后两个数组相加得到下一列
func generatePascalsTriangle118(_ numRows: Int) -> [[Int]] {

    if numRows == 0 {
        return []
    }
    
    var res: [[Int]] = [[1]]
    
    for _ in 1 ..< numRows {
        let nums1: [Int] = res[res.count - 1] + [0]
        
        let nums2 = [0] + res[res.count - 1]

        var row = [Int]()
        
        for i in 0 ..< nums1.count {
            
            let item = nums1[i] + nums2[i]
            
            row.append(item)
        }
        
        res.append(row)
    }
    
    return res
}
