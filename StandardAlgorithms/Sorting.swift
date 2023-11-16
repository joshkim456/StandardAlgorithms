
import Foundation

class MergeSort {

    func merge(_ left: [Int], _ right: [Int]) -> [Int]{
        var sorted_list = [Int]()
        var left_index = 0
        var right_index = 0
        
        while left_index < left.count && right_index < right.count {
            if left[left_index] < right[right_index] {
                sorted_list.append(left[left_index])
                left_index += 1
            } else {
                sorted_list.append(right[right_index])
                right_index += 1
            }
        }
        
        sorted_list += left[left_index...]
        sorted_list += right[right_index...]
        
        return sorted_list
    }
    
    func mergeSort(_ numbers: [Int]) -> [Int] {
        if numbers.count <= 1 {
            return numbers
        }
        
        let mid = numbers.count / 2
        let left = Array(numbers[..<mid])
        let right = Array(numbers[mid...])
                
        return merge(mergeSort(left), mergeSort(right))
        
    }
}

class QuickSort {
    
    func quickSort(_ data: [Int]) -> [Int] {
        if data.count <= 1 {
            return data
        } else {
            let pivot = data[0]
            
            var newData = [Int]()
            var left = [Int]()
            var right = [Int]()
            
            for i in 1..<data.count {
                let item = data[i]
                if item < pivot {
                    left.append(item)
                } else {
                    right.append(item)
                }
            }
            
            newData.append(contentsOf: quickSort(left))
            newData.append(pivot)
            newData.append(contentsOf: quickSort(right))
            
            return newData
         }
    }
}

class BubbleSort {
    func bubbleSort( _ data: [Int]) -> [Int] {
        
        var sorted = [Int]()
        
        for number in data {
            sorted.append(number)
        }
        
        for _ in 0...sorted.count-2 {
            for j in 0...sorted.count-2 {
                if sorted[j] > sorted[j+1] {
                    let temp = sorted[j]
                    sorted[j] = sorted[j+1]
                    sorted[j+1] = temp
                }
            }
        }
                
        return sorted
    }
}







