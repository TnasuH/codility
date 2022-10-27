/*
 A string S consisting of N characters is called properly nested if:

 S is empty;
 S has the form "(U)" where U is a properly nested string;
 S has the form "VW" where V and W are properly nested strings.
 For example, string "(()(())())" is properly nested but string "())" isn't.

 Write a function:

 public func solution(_ S : inout String) -> Int

 that, given a string S consisting of N characters, returns 1 if string S is properly nested and 0 otherwise.

 For example, given S = "(()(())())", the function should return 1 and given S = "())", the function should return 0, as explained above.

 Write an efficient algorithm for the following assumptions:

 N is an integer within the range [0..1,000,000];
 string S is made only of the characters "(" and/or ")".
 */
import Foundation

// Solution Score is 100%
public func solution(_ S : inout String) -> Int {
    var pCounter = 0
    for char in S {
        let ch = String(char)
        if ch == "(" {
            pCounter += 1
        } else if ch == ")" {
            pCounter -= 1
            if (pCounter < 0) {
                return 0;
            }
        }
    }
    return pCounter == 0 ? 1 : 0
}

var s = "(()(())())"
print(solution(&s))
