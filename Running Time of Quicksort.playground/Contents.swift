import Foundation;

// Enter your code here

let n = Int(readLine()!)
var array = readLine()!.components(separatedBy: " ").map { Int($0)! }
var insertionCounter = 0
var quicksortCounter = 0


func insertionSort(_ input:[Int]) {
    var result = input
    i: for i in (1..<result.count) {
        k: for k in (1...i).reversed() {
            if result[k] < result[k-1] {
                swap(&result[k], &result[k-1])
                insertionCounter += 1   // Swap
                
            } else {
                break k
            }
        }
    }
}
insertionSort(array)

///////////
func quicksort(_ arr:inout[Int], _ lo:Int, _ hi:Int) -> Void {
    if lo < hi {
        let p = partition(&arr, lo, hi)
        quicksort(&arr, lo, p-1)
        quicksort(&arr, p+1, hi)
    }
}


func partition(_ arr:inout[Int], _ lo:Int, _ hi:Int) -> Int {
    
    let pivot = arr[hi]
    var i = lo - 1
    
    for j in lo...hi {
        if arr[j] <= pivot {
            i += 1
            if i != j {
                swap(&arr[i], &arr[j])
            }
            quicksortCounter += 1
        }
    }
    return i
}
quicksort(&array, 0, array.count - 1)

///////////
print(insertionCounter - quicksortCounter)