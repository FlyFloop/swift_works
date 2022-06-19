import UIKit


/*
 Input : arr[] = {"geeks", "for", "geeks", "a",
                 "portal", "to", "learn", "can",
                 "be", "computer", "science",
                  "zoom", "yup", "fire", "in",
                  "be", "data", "geeks"}
 Output : Geeks
 "geeks" is the most frequent word as it
 occurs 3 times
 */

let arr = ["geeks", "for", "geeks", "a",
                "portal", "to", "learn", "can",
                "be", "computer", "science",
                 "zoom", "yup", "fire", "in",
    "be", "data", "geeks"]
func mostWordInArray(givenArray : [String]){
    var docs = [String:Int]()
    for value in arr{
        docs[value] = 0
    }
    for value in docs.keys{
        for val in arr{
            if val == value{
                docs[value]! += 1
            }
        }
    }
    maxValue(array: docs)
}
func maxValue(array:[String:Int]) {
    let maxValueOfSomeDictionary = array.max { a, b in a.value < b.value }
    print("\(maxValueOfSomeDictionary!.key) count = \(maxValueOfSomeDictionary!.value)")
}
mostWordInArray(givenArray: arr)
