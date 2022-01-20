import Foundation

// 36. 有效的数独

func isValidSudoku(_ board: [[Character]]) -> Bool {
    
    for i in 0..<9 {
        
        // 每一行
        if isPartiallyValid(board: board, x1: i, y1: 0, x2: i, y2: 8) == false {
            return false
        }
        
        // 每一列
        if isPartiallyValid(board: board, x1: 0, y1: i, x2: 8, y2: i) == false {
            return false
        }
    }
    
    // 九宫格
    for i in 0..<3 {
        for j in 0..<3 {
            if isPartiallyValid(board: board, x1: i*3, y1: j*3, x2: i*3+2, y2: j*3+2) == false {
                return false
            }
        }
    }
    
    return true
}

func isPartiallyValid(board: [[Character]], x1: Int, y1: Int, x2: Int, y2: Int) -> Bool {
    var singleSet: Set<Character> = Set()
    
    for i in x1...x2 { // 行
        for j in y1...y2 { // 列
            if board[i][j] != "." {
                
                if singleSet.contains(board[i][j]) {
                    return false
                }else {
                    singleSet.insert(board[i][j])
                }
            }
        }
    }
    return true
}
