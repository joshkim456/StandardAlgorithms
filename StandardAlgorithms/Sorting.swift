
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
        }

        let firstPivot = data[0]
        let sorted = placePivot(data, firstPivot)
        
        return sorted
    }
    
    func placePivot(_ data: [Int], _ pivot: Int) -> [Int] {
        //returns array with pivot correctly in place

        var left = [Int]()
        var right = [Int]()
        
        for i in 1...data.count-1 {
            if data[i] <= pivot {
                left.append(data[i])
            } else {
                right.append(data[i])
            }
        }
        
        print(left, pivot, right)
        
        if left.count <= 1 {
            return left + Array([pivot]) + right
        }
        if right.count <= 1 {
            return left + Array([pivot]) + right
        }
        
        return placePivot(Array(left[0...]), left[0]) + Array([pivot]) + placePivot(Array(right[0...]), right[0])
        
    }
}







