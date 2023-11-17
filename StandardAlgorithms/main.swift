//
//  main.swift
//  StandardAlgorithms
//
//  Created by Kim, Joshua (WING) on 07/11/2023.
//

import Foundation

let isorting = InsertionSort()

var data = [5, 2, 3, -5, 7, 10]
data = isorting.insertionSort(data)
print(data)
