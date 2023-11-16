//
//  SearchingTests.swift
//  StandardAlgorithmTests
//
//  Created by Kim, Joshua (WING) on 16/11/2023.
//

import XCTest

final class SearchingTests: XCTestCase {
    
    func testBinarySearchWithMediumLengthSortedArrays() {
        //arrange
        let bsearching = BinarySearch()
        
        let tests = [[1, 2, 4, 6, 10], [1, 5, 7, 8, 10, 11, 45, 69]]
        
        let targets = [4, 69]
        
        //act + assert
        for i in 0..<2 {
            print(tests[i], targets[i])
            XCTAssertTrue(bsearching.binarySearch(tests[i], targets[i]).0)
        }
    }
    
}
