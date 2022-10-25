/*
 This is a demo task.

 Write a function:

 public func solution(_ A : inout [Int]) -> Int

 that, given an array A of N integers, returns the smallest positive integer (greater than 0) that does not occur in A.

 For example, given A = [1, 3, 6, 4, 1, 2], the function should return 5.

 Given A = [1, 2, 3], the function should return 4.

 Given A = [−1, −3], the function should return 1.

 Write an efficient algorithm for the following assumptions:

 N is an integer within the range [1..100,000];
 each element of array A is an integer within the range [−1,000,000..1,000,000].
 */
import Foundation

public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 4.2.1 (Linux)
    let posSrtdInts = A.filter { $0 > 0 }.sorted()
    var missingPositiveInt = 1
    for elem in posSrtdInts{
        if(elem > missingPositiveInt) {
            return missingPositiveInt
        }
        missingPositiveInt = elem + 1
    }
    return missingPositiveInt
}

var arr = [1, 3, 6, 4, 1, 2]
print(solution(&arr))
