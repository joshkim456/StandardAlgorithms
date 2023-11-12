
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






