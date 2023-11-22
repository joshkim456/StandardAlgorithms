//
//  main.swift
//  StandardAlgorithms
//
//  Created by Kim, Joshua (WING) on 07/11/2023.
//

import Foundation

let bubblesorting = BubbleSort()
let quicksorting = QuickSort()
let insertionsorting = InsertionSort()
let mergesorting = MergeSort()
let bsearching = BinarySearch()
let lsearching = LinearSearch()


print("Which algorithm would you like to know about? ")
print("1: Bubble Sort 2: Merge Sort 3: Quick Sort 4: Insertion Sort 5: Binary Search 6: Linear Search")

if let temp = readLine() {
    if let answer = Int(temp) {
        if answer == 1 {
            print("Bubble Sort:")
            print("The algorithm starts at the first element in an array and compares it to the second. If they are in the wrong order, hte algorithm swaps the pair. Otherwise, the algorithm moves on. The process is then repeated for every adjacent pair of elements in the array until the end of the array is reached.")
            print()
            print("Time Complexity: \nBest Case: O(N) \nAverage Case: O(N^2) \nWorst Case: O(N^2)")
            print()
            print("Space Complexity: O(N)")
            print()
            print("Example data: [4, 5, 2, 7, 6], Output data: \(bubblesorting.bubbleSort([4, 5, 2, 7, 6]))")
        } else if answer == 2 {
            print("Merge Sort:")
            print("Merge sort divides the input array continuously into two parts until each of those are length 1. It then conquers back together the two parts into a sorted array, continously doing so until the array is sorted.")
            print()
            print("Time Complexity: \nBest Case: O(NlogN) \nAverage Case: O(NlogN) \nWorst Case: O(NlogN)")
            print()
            print("Space Complexity: O(N)")
            print()
            print("Example data: [4, 5, 2, 7, 6], Output data: \(mergesorting.mergeSort([4, 5, 2, 7, 6]))")
        } else if answer == 3 {
            print("Quick Sort:")
            print("Quick sort works by selecting an element, often the central element (called a pivot), and dividing the input around it. Elements smaller than the pivot are placed in a list to the left of the pivot and others are placed in a list to the right. This process is then repeated recursively on each new list until all elements in the input are old pivots or form a list of length 1.")
            print()
            print("Time Complexity: \nBest Case: O(NlogN) \nAverage Case: O(NlogN) \nWorst Case: O(N^2)")
            print()
            print("Space Complexity: O(logN)")
            print()
            print("Example data: [4, 5, 2, 7, 6], Output data: \(quicksorting.quickSort([4, 5, 2, 7, 6]))")
        } else if answer == 4 {
            print("Insertion Sort:")
            print("Insertion sort starts with comparing the 2nd element to the contents to its left. It then inserts the first element into its correct position. It then iterates through the array, selecting the 3rd element, comparing and inserting it in its correct position in its left. This process happens until the whole list is sorted.")
            print()
            print("Time Complexity: \nBest Case: O(N) \nAverage Case: O(N^2) \nWorst Case: O(N^2)")
            print()
            print("Space Complexity: O(1)")
            print()
            print("Example data: [4, 5, 2, 7, 6], Output data: \(insertionsorting.insertionSort([4, 5, 2, 7, 6]))")
        } else if answer == 5 {
            print("Binary Search:")
            print("This algorithm can only be applied to sorted data. The algorithm starts by selecting the element at the middle of the list. If the target is smaller than it, then the right side of the list is discarded. If the target is bigger, the left side of the list is discarded. The remaining half becomes the new list. This algorithm repeatedly does this until the target is found or the list is empty.")
            print()
            print("Time Complexity: \nBest Case: O(1) \nAverage Case: O(logN) \nWorst Case: O(logN)")
            print()
            print("Space Complexity: O(1)")
            print()
            print("Example data: [1, 2, 3, 4, 5] target: 5, Output data: \(bsearching.binarySearch([1,2,3,4,5], 5))")
        } else if answer == 6 {
            print("Linear Search:")
            print("This algorithm uses a single for loop and iterates through the list starting from the beginning, stopping when it finds the target or it reaches past the end of the list.")
            print()
            print("Time Complexity: \nBest Case: O(1) \nAverage Case: O(N) \nWorst Case: O(N)")
            print()
            print("Space Complexity: O(1)")
            print()
            print("Example data: [1, 2, 3, 4, 5] target: 5, Output data: \(lsearching.linearSearch([1,2,3,4,5], 5))")
        }
    }
}
