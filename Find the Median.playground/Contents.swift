import Foundation;

// Enter your code here


let n = Int(readLine()!)!
let array = readLine()!.components(separatedBy: " ").map{ Int($0)! }


let sortedArray = array.sorted()
var result: Double = 0

switch array.count {
case _ where array.count % 2 != 0:
    result = Double(sortedArray[array.count/2])
    
default:
    result = Double((sortedArray[array.count/2] + sortedArray[(array.count/2) - 1])) / 2
}

print(Int(result))