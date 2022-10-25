/*
 An array A consisting of N different integers is given. The array contains integers in the range [1..(N + 1)], which means that exactly one element is missing.

 Your goal is to find that missing element.

 Write a function:

 public func solution(_ A : inout [Int]) -> Int

 that, given an array A, returns the value of the missing element.

 For example, given array A such that:

   A[0] = 2
   A[1] = 3
   A[2] = 1
   A[3] = 5
 the function should return 4, as it is the missing element.

 Write an efficient algorithm for the following assumptions:

 N is an integer within the range [0..100,000];
 the elements of A are all distinct;
 each element of array A is an integer within the range [1..(N + 1)].
 
 */
import Foundation

public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 4.2.1 (Linux)
    if A.count == 0 {
        return 1
    }
    
    let termCount = A.count + 1 // +1 for missing count
    let res = termCount * (termCount + 1 ) / 2
    let total = A.reduce(0, +)
    return res - total
}

var arr = [2, 3, 1, 5]
print(solution(&arr))
