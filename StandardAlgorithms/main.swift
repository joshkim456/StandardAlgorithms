//
//  main.swift
//  StandardAlgorithms
//
//  Created by Kim, Joshua (WING) on 07/11/2023.
//

import Foundation

// Split list in 2 until it cannot be split further
// lo, mid, hi
// mid = (lo+hi) / 2

let quicksorting = QuickSort()

let sortedArray = quicksorting.quickSort([1, 3, 5, 4, 4, 2])

print("Sorted:",sortedArray)
