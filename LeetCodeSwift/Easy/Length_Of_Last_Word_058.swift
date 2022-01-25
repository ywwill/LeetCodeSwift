import Foundation

// 58. 最后一个单词的长度

func lengthOfLastWord(_ s: String) -> Int {
    var len = 0
    var i = 0
    while i < s.count {
        if s[i] != " " {
            len += 1
        } else if i + 1 < s.count && s[i+1] != " "  {
            len = 0
        }
        i += 1
    }
    return len
}

private extension String {
    subscript (index: Int) -> Character {
        return self[self.index(self.startIndex, offsetBy: index)]
    }
}
