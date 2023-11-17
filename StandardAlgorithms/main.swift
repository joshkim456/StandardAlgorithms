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
            print("Bubble Sort iterates through the array starting from the beginning to the end, and swaps two numbers if the number preceeding is bigger. This is done N times after which the array is sorted")
            print("Time Complexity: \nBest Case: O(N) \nAverage Case: O(N^2) \nWorst Case: O(N^2)")
            print("Space Complexity: \nBest Case: O(N) \nAverage Case: O(N) \nWorst Case: O(N)")
            print("Example data: [4, 5, 2, 7, 6], Output data: \(bubblsorting.bubbleSort([4, 5, 2, 7, 6])")
        } else if answer == 2 {
            
        }
    }
}
