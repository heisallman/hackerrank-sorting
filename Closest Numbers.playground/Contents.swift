import Foundation;

// Enter your code here

let n = Int(readLine()!)!

let array = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let sortedArray = array.sorted(by: { $0 < $1 })
var dictionary = [Int:(Int,Int,Int)]()

for (index,item) in sortedArray.enumerated() {
    
    if index < sortedArray.count - 1 {
        let result = sortedArray[index + 1] - sortedArray[index]
        dictionary.updateValue((result,sortedArray[index],sortedArray[index + 1]), forKey: index)
    }
}

let lowestValue = dictionary.sorted(by: { $0.0.value.0 < $0.1.value.0 })[0].value.0
var lowestPairs:(Int,Int) = (0,0)
var lowestPairsArray = [(Int,Int)]()

for (key, value) in dictionary {
    if value.0 == lowestValue {
        lowestPairs = (value.1, value.2)
        lowestPairsArray.append(lowestPairs)
    }
}

let sortedPairs = lowestPairsArray.sorted(by: {
    $0.0 < $0.1
}).flatMap({
    "\($0.0) \($0.1)"
}).joined(separator: " ")

print(sortedPairs)