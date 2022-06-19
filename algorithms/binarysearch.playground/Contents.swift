import UIKit
/*
 Problem: Given a sorted array arr[] of n elements, write a function to search a given element x in arr[] and return the index of x in array.
 Input: arr[] = {10, 20, 30, 50, 60, 80, 110, 130, 140, 170}, x = 110
 Output: 6
 Explanation: Element x is present at index 6.

 Input: arr[] = {10, 20, 30, 40, 60, 110, 120, 130, 170}, x = 175
 Output: -1
 Explanation: Element x is not present in arr[].
 Step-by-step Binary Search Algorithm: We basically ignore half of the elements just after one comparison.

 Compare x with the middle element.
 If x matches with the middle element, we return the mid index.
 Else If x is greater than the mid element, then x can only lie in the right half subarray after the mid element. So we recur for the right half.
 Else (x is smaller) recur for the left half.
 */

let array = [1, 3, 5, 7, 9 ]
var count = 0
func binary(num:Int,arr: [Int]) -> Bool{
    var leftIndex = 0
    var rightIndex = arr.count - 1
    while leftIndex <= rightIndex{
        let middleIndex = leftIndex + (rightIndex - leftIndex) / 2
        if num == arr[middleIndex] {
            return true
        }
        if num > arr[middleIndex] {
            leftIndex = middleIndex + 1
        }
        else {
            rightIndex = middleIndex  - 1
        }
    }
    return false
}
print(binary(num: 3, arr: array))
