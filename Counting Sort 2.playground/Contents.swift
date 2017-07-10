import Foundation;

// Enter your code here

let n = Int(readLine()!)!
let ar = readLine()!.components(separatedBy:" ").map { Int($0)! }


// *** STEP 1 ***
let arCS = NSCountedSet(array: ar)
var result = [Int]()

for i in 0..<n {
    result.append(arCS.count(for: i))
}


// *** STEP 2 ***
for index in 1 ..< result.count {
    let sum = result[index] + result[index - 1]
    result[index] = sum
}


// *** STEP 3 ***
var sortedArray = [Int](repeating: 0, count: ar.count)
for element in ar {
    result[element] -= 1
    sortedArray[result[element]] = element
}
print(sortedArray.map({ String($0) }).joined(separator: " "))