import Foundation;

// Enter your code here

let n = Int(readLine()!)!
let array = readLine()!.components(separatedBy:" ").map { Int($0)! }

func insertionSort(_ input:[Int]) {
    
    let n = input.last!
    var result = input
    
    for i in (0..<input.count).reversed() {
        let comparator = i > 0 ? input[i-1] : input[0]
        
        if n < comparator {
            result[i] = i == 0 ? n : input[i-1]
            print(result.map({ String($0) }).joined(separator: " " ))
        }
        
        if n > comparator {
            result[i] = n
            print(result.map({ String($0) }).joined(separator: " " ))
            break
        }
    }
}

insertionSort(array)