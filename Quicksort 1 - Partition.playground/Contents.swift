import Foundation;

// Enter your code here

let n = Int(readLine()!)!
let array = readLine()!.components(separatedBy: " ").map { Int($0)! }

func quickSort(_ input: [Int]) {
    
    var left = Array<Int>()
    var right = Array<Int>()
    let equal = Array(repeating: input[0], count: 1)
    let pivot = input[0]
    
    for i in 1..<input.count {
        switch input[i] {
        case _ where input[i] < pivot:
            left.append(input[i])
        case _ where input[i] > pivot:
            right.append(input[i])
        default:
            continue
        }
    }
    
    let result = left + equal + right
    print(result.map({ String($0) }).joined(separator: " "))
}


quickSort(array)
