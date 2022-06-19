import UIKit

/*
 Factorial of a non-negative integer, is multiplication of all positive integers smaller than or equal to n. For example factorial of 6 is 6*5*4*3*2*1 which is 720.

 A factorial is represented by a number and a  ” ! ”  mark at the end. It is widely used in permutations and combination to calculate the total possible outcomes. A French mathematician Christian Kramp firstly used  the the exclamation.
 */

func factorial(num:Int) -> Int {
    if(num == 0){
        return 1
    }else{
        return num * factorial(num: num - 1)
    }
}

print(factorial(num: 5))
