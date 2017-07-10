import Foundation;

// Enter your code here

let n = Int(readLine()!)!
let ar = readLine()!.components(separatedBy:" ").map { Int($0)! }

let arCS = NSCountedSet(array: ar)
var result = [Int]()

for i in 0..<100 {
    result.append(arCS.count(for: i))
}

print(result.map({ String($0) }).joined(separator: " "))