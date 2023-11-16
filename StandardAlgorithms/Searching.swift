//
//  Searching.swift
//  StandardAlgorithms
//
//  Created by Kim, Joshua (WING) on 16/11/2023.
//

import Foundation

class BinarySearch {
    func binarySearch(_ data: [Int], _ target: Int) -> (Bool, Int) {
        var found = false
        var index = 0
        
        var lo = 0
        var hi = data.count-1
        var mid = (lo+hi)/2
        
        while lo < hi {
            if data[mid] < target {
                lo = mid+1
                mid = (lo+hi)/2
            } else if data[mid] > target {
                hi = mid-1
                mid = (lo+hi)/2
            } else {
                found = true
                index = mid
                return (found, index)
            }
        }
        
        return (found, index)
    }
}
