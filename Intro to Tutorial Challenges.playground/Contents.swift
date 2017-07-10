import Foundation;

// Enter your code here


let value = Int(readLine()!)!

let size = Int(readLine()!)!

let array = readLine()!.components(separatedBy: " ").map{ Int($0)! }

if let index = array.index(of: value) {
    print(index)
}
