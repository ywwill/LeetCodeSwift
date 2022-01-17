import Foundation

// 20. 有效的括号

func isValidParentheses(_ s: String) -> Bool {

    let charArr: Array<Character> = Array(s)
    let dict: Dictionary<Character, Character> = [")" : "(" ,
                "}" : "{",
                "]" : "["]
    
    var stack: Array<Character> = []
    
    for parentheses in charArr {
        
        if parentheses == ")" || parentheses == "}" || parentheses == "]" {
            
            if stack.isEmpty || stack.last != dict[parentheses] {
                return false
            }else {
                stack.removeLast()
            }
            
        }else {
            stack.append(parentheses)
        }
    }
    
    return stack.isEmpty
}
