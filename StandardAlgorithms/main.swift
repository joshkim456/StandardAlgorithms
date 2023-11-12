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

let merging = MergeSort()

let sortedArray = merging.mergeSort([1, 3, 4, 2, -5, -2])

print(sortedArray)
