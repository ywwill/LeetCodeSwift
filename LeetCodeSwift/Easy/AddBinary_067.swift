import Foundation

// 67. 二进制求和，递归

func addBinary(_ a: String, _ b: String) -> String {
    
    var aStr = a
    var bStr = b
    
    if aStr == "" {
        return bStr
    }

    if bStr == "" {
        return aStr
    }

    let a_end_str = aStr[aStr.index(aStr.endIndex, offsetBy: -1)]
    let b_end_str = bStr[bStr.index(bStr.endIndex, offsetBy: -1)]
    
    // 最后一位
    if a_end_str == "1" && b_end_str == "1" {
        
        // 移除最后一位
        let _ = String(aStr.removeLast())
        let _ = String(bStr.removeLast())
        
        return addBinary(addBinary(aStr, bStr), "1") + "0"
        
    }else if a_end_str == "0" && b_end_str == "0" {
        
        let _ = String(aStr.removeLast())
        let _ = String(bStr.removeLast())
        
        return addBinary(aStr, bStr) + "0"
        
    }else {
        let _ = String(aStr.removeLast())
        let _ = String(bStr.removeLast())
        
        return addBinary(aStr, bStr) + "1"
    }
}
