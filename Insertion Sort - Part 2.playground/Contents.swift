import Foundation;

// Enter your code here

let s = Int(readLine()!)!
let array = readLine()!.components(separatedBy: " ").map { Int($0)! }

func insertionSort(_ input:[Int]) {
    var result = input
    i: for i in (1..<result.count) {
        k: for k in (1...i).reversed() {
            if result[k] < result[k-1] {
                swap(&result[k], &result[k-1])
            } else {
                
                break k
            }
        }
        print(result.map({ String($0) }).joined(separator: " "))
    }
}

insertionSort(array)