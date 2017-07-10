import Foundation;

// Enter your code here

let n = Int(readLine()!)!
let array = readLine()!.components(separatedBy:" ").map { Int($0)! }

func quicksort(_ input: [Int]) -> [[Int]] {
    
    var left:[Int]?
    var right:[Int]?
    
    let equal = Array(repeating: input[0], count: 1)
    let pivot = input[0]
    
    for i in 1..<input.count {
        
        switch input[i] {
        case _ where input[i] < pivot:
            if left == nil {
                left = []
                left?.append(input[i])
            } else {
                left?.append(input[i])
            }
            
        case _ where input[i] > pivot:
            if right == nil {
                right = []
                right?.append(input[i])
            } else {
                right?.append(input[i])
            }
        default:
            continue
        }
    }
    
    var result = Array(arrayLiteral: left,equal,right).flatMap({ $0 })
    
    for (index,item) in result.enumerated() {
        if item.count > 1 {
            let wtf = quicksort(item)
            result[index] = wtf.flatMap({ $0 })
        }
    }
    
    print(result.flatMap({ $0 }).map({ String($0) }).joined(separator: " "))
    return result
}


quicksort(array)