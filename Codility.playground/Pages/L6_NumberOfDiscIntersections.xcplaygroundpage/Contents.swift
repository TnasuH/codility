/*
 We draw N discs on a plane. The discs are numbered from 0 to N − 1. An array A of N non-negative integers, specifying the radiuses of the discs, is given. The J-th disc is drawn with its center at (J, 0) and radius A[J].

 We say that the J-th disc and K-th disc intersect if J ≠ K and the J-th and K-th discs have at least one common point (assuming that the discs contain their borders).

 The figure below shows discs drawn for N = 6 and A as follows:

   A[0] = 1
   A[1] = 5
   A[2] = 2
   A[3] = 1
   A[4] = 4
   A[5] = 0

 /// Image: /Resources/L6_Image

 There are eleven (unordered) pairs of discs that intersect, namely:

 discs 1 and 4 intersect, and both intersect with all the other discs;
 disc 2 also intersects with discs 0 and 3.
 Write a function:

 public func solution(_ A : inout [Int]) -> Int

 that, given an array A describing N discs as explained above, returns the number of (unordered) pairs of intersecting discs. The function should return −1 if the number of intersecting pairs exceeds 10,000,000.

 Given array A shown above, the function should return 11, as explained above.

 Write an efficient algorithm for the following assumptions:

 N is an integer within the range [0..100,000];
 each element of array A is an integer within the range [0..2,147,483,647].
 */
import Foundation

/// Solution Score is 68%
public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 4.2.1 (Linux)
    if A.count < 2 {
        return 0
    }
    var intersectCount = 0
    for d1idx in 0..<A.count-1 {
        for d2idx in (d1idx+1)..<A.count {
            let d1r = A[d1idx]
            let d2r = A[d2idx]
            if isIntersect(d1idx-d1r, d1idx+d1r, d2idx-d2r, d2idx+d2r) {
                intersectCount += 1
            }
        }
    }
    return intersectCount
}


func isIntersect(_ d1Left: Int,_ d1Right: Int,_ d2Left: Int,_ d2Right: Int) -> Bool {
    if ((((d1Left...d1Right).contains(d2Left) || (d1Left...d1Right).contains(d2Right))) ||
        (((d2Left...d2Right).contains(d1Left) || (d2Left...d2Right).contains(d1Right))))
    {
            return true
    }
    return false
}

var arr = [1, 5, 2, 1, 4, 0]
print(solution(&arr))
