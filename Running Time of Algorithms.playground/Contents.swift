import Foundation;

// Enter your code here

let s = Int(readLine()!)!
let array = readLine()!.components(separatedBy: " ").map { Int($0)! }

func insertionSort(_ input:[Int]) {
    var result = input
    var counter = 0
    i: for i in (1..<result.count) {
        k: for k in (1...i).reversed() {
            if result[k] < result[k-1] {
                swap(&result[k], &result[k-1])
                counter += 1
            } else {
                break k
            }
        }
    }
    print(counter)
}

insertionSort(array)