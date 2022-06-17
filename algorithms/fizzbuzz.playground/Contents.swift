import UIKit

/*
 Write a program that prints the numbers from 1 to 100 and for multiples of ‘3’ print “Fizz” instead of the number and for the multiples of ‘5’ print “Buzz”.
 */
for num in 1...100{
    if num % 15 == 0{
        print("Fizz Buzz")
        continue
    }
    else if num % 3 == 0{
        print("Fizz")
        continue
    }
    else if num % 5 == 0{
        print("Buzz")
        continue
    }
    print(num)
}
