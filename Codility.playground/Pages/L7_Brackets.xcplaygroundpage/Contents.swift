/*
 A string S consisting of N characters is considered to be properly nested if any of the following conditions is true:

 S is empty;
 S has the form "(U)" or "[U]" or "{U}" where U is a properly nested string;
 S has the form "VW" where V and W are properly nested strings.
 For example, the string "{[()()]}" is properly nested but "([)()]" is not.

 Write a function:

 public func solution(_ S : inout String) -> Int

 that, given a string S consisting of N characters, returns 1 if S is properly nested and 0 otherwise.

 For example, given S = "{[()()]}", the function should return 1 and given S = "([)()]", the function should return 0, as explained above.

 Write an efficient algorithm for the following assumptions:

 N is an integer within the range [0..200,000];
 string S is made only of the following characters: "(", "{", "[", "]", "}" and/or ")".
 
 */
import Foundation

/// Solution Score is 87%
public func solution(_ S : inout String) -> Int {
    let brackets = ["[":"]", "{":"}", "(":")"]
        
    var usingBrackets = [String]()
    
    for char in S {
        let char = String(char)
        if brackets.keys.contains(char) {
            usingBrackets.insert(char, at: 0)
        } else if brackets.values.contains(char) {
            
            if let ch = usingBrackets.first, brackets[ch] == char {
                usingBrackets.removeFirst()
            } else {
                return 0
            }
        }
    }
    
    if usingBrackets.count == 0 {
        return 1
    } else {
        return 0
    }
}

var s = "{[({Y})()]}"
print(solution(&s))
