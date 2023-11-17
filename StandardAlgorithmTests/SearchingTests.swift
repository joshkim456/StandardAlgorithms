//
//  SearchingTests.swift
//  StandardAlgorithmTests
//
//  Created by Kim, Joshua (WING) on 16/11/2023.
//

import XCTest

final class SearchingTests: XCTestCase {
    
    func testBinarySearchWithMediumLengthSortedArraysWhichAreOddAndEvenLength() {
        //arrange
        let bsearching = BinarySearch()
        
        let tests = [[1, 2, 4, 6, 10], [1, 5, 7, 8, 10, 11, 45, 69]]
        
        let targets = [4, 69]
        
        //act + assert
        for i in 0..<2 {
            XCTAssertEqual(true, bsearching.binarySearch(tests[i], targets[i]).0)
        }
    }
    
    func testBinarySearchWithBoundaryCaseArrays() {
        //arrange
        let bsearching = BinarySearch()
        
        let emptyArray = [Int]()
        let target = 0
        
        //act + assert
        XCTAssertEqual(false, bsearching.binarySearch(emptyArray, target).0)
        
    }
    
    func testLinearSearchWithMediumLengthSortedArraysWhichAreOddAndEvenLength() {
        //arrange
        let lsearching = LinearSearch()
        
        let tests = [[1, 2, 4, 6, 10], [1, 5, 7, 8, 10, 11, 45, 69]]
        
        let targets = [4, 69]
        
        //act + assert
        for i in 0..<2 {
            XCTAssertEqual(true, lsearching.linearSearch(tests[i], targets[i]).0)
        }
    }
    
    func testLinearSearchWithBoundaryCaseArrays() {
        //arrange
        let lsearching = LinearSearch()
        
        let emptyArray = [Int]()
        let target = 0
        
        //act + assert
        XCTAssertEqual(false, lsearching.linearSearch(emptyArray, target).0)
    }
    
}
