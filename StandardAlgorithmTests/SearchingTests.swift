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
    
    func testBinarySearchWithLength5Array() {
        //arrange
        let bsearching = BinarySearch()
        
        var size_5_array = [Int]()
        for _ in 0..<5 {
            size_5_array.append(Int.random(in: -100...100))
        }
        
        var size_50_array = [Int]()
        for _ in 0..<50 {
            size_50_array.append(Int.random(in: -100...100))
        }
        
        var size_500_array = [Int]()
        for _ in 0..<500 {
            size_500_array.append(Int.random(in: -100...100))
        }
        
        
        var size_5_array_sorted = size_5_array
        let target_5 = size_5_array[0]
        size_5_array_sorted.sort()
        
        var size_50_array_sorted = size_50_array
        let target_50 = size_50_array[0]
        size_50_array_sorted.sort()
        
        var size_500_array_sorted = size_500_array
        let target_500 = size_500_array[0]
        size_500_array_sorted.sort()
        
        // act + assert (Comment out different tests as needed)
        print("Testing with length 5 array: ")
        measure {
            XCTAssertEqual(true, bsearching.binarySearch(size_5_array_sorted, target_5).0)
        }
        
        print("Testing with length 50 array: ")
        measure {
            XCTAssertEqual(true, bsearching.binarySearch(size_50_array_sorted, target_50).0)
        }
        
        print("Testing with length 500 array: ")
        measure {
            XCTAssertEqual(true, bsearching.binarySearch(size_500_array_sorted, target_500).0)
        }
    }
    
    func testLinearSearchWithPerformanceTests() {
        //arrange
        let lsearching = LinearSearch()
        
        var size_5_array = [Int]()
        for _ in 0..<5 {
            size_5_array.append(Int.random(in: -100...100))
        }
        
        var size_50_array = [Int]()
        for _ in 0..<50 {
            size_50_array.append(Int.random(in: -100...100))
        }
        
        var size_500_array = [Int]()
        for _ in 0..<500 {
            size_500_array.append(Int.random(in: -100...100))
        }
        
        
        var size_5_array_sorted = size_5_array
        let target_5 = size_5_array[0]
        size_5_array_sorted.sort()
        
        var size_50_array_sorted = size_50_array
        let target_50 = size_50_array[0]
        size_50_array_sorted.sort()
        
        var size_500_array_sorted = size_500_array
        let target_500 = size_500_array[0]
        size_500_array_sorted.sort()
        
        // act + assert (Comment out different tests as needed)
        print("Testing with length 5 array: ")
        measure {
            XCTAssertEqual(true, lsearching.linearSearch(size_5_array_sorted, target_5).0)
        }
        
        print("Testing with length 50 array: ")
        measure {
            XCTAssertEqual(true, lsearching.linearSearch(size_50_array_sorted, target_50).0)
        }
        
        print("Testing with length 500 array: ")
        measure {
            XCTAssertEqual(true, lsearching.linearSearch(size_500_array_sorted, target_500).0)
        }
    }
    
}
