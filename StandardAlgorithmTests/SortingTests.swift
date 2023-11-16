
import XCTest

final class SortingTests: XCTestCase {
    
    struct SortingTestCase {
        let data: [Int]
        let expected: [Int]
    }
    
    func testMergeSortWithValidArrays() {
        
        //arrange
        let merging = MergeSort()
        
        let size_5_random = [4, 5, 2, 7, 6]
        
        let size_10_random = [1, 7, 5, 6, 4, 4, 2, 7, 5, 9]
        
        let tests = [size_5_random, size_10_random]
        let testsexpected = [[2, 4, 5, 6, 7], [1, 2, 4, 4, 5, 5, 6, 7, 7, 9]]
        
        //act + assert
        
        for i in 0..<2 {
            var expected = tests[i]
            expected.sort()
            
            print("Testing with array of \((i+1)*5) random integers")
            XCTAssertEqual(testsexpected[i], merging.mergeSort(tests[i]))
        }
    }
    
    func testMergeSortWithErroneousArrays() {
        //arrange
        let merging = MergeSort()

        let allSame = [1, 1, 1, 1, 1, 1, 1, 1, 1]
        
        //act + assert
        
        var allSameExpected = allSame
        allSameExpected.sort()

        print("Testing with array with all the same numbers: ")
        XCTAssertEqual(allSameExpected, merging.mergeSort(allSame))
        
    }
    
    func testMergeSortWithBoundaryCaseArrays() {
        // arrange
        let merging = MergeSort()
        
        let zeroLength = [Int]()
        
        var veryLongLengthArray = [Int]()
        for _ in 0..<100000000 {
            veryLongLengthArray.append(Int.random(in: -100...100))
        }
        
        //act + assert
        
        var zeroLengthExpected = zeroLength
        zeroLengthExpected.sort()
        
        var veryLongLengthArrayExpected = veryLongLengthArray
        veryLongLengthArrayExpected.sort()
        
        print("Testing with Zero Length Array: ")
        XCTAssertEqual(zeroLengthExpected, merging.mergeSort(zeroLength))
        
        print("Testing with very long length Array: ")
        XCTAssertEqual(veryLongLengthArrayExpected, merging.mergeSort(veryLongLengthArray))
        
    }
    
    func testMergeSortPerformanceWithLongArray() {
        // arrange
        let merging = MergeSort()
        
        var veryLongLengthArray = [Int]()
        for _ in 0..<10000 {
            veryLongLengthArray.append(Int.random(in: -100...100))
        }
        
        var veryLongLengthArrayExpected = veryLongLengthArray
        veryLongLengthArrayExpected.sort()
        
        // act + assert
        print("Testing with very long length Array: ")
        
        measure {
            XCTAssertEqual(veryLongLengthArrayExpected, merging.mergeSort(veryLongLengthArray))
        }
    }
    
    func testQuickSortWithValidArrays() {
        
        //arrange
        let quicksorting = QuickSort()
        
        let size_5_random = [4, 5, 2, 7, 6]
        
        let size_10_random = [1, 7, 5, 6, 4, 4, 2, 7, 5, 9]

        
        let tests = [size_5_random, size_10_random]
        let testsexpected = [[2, 4, 5, 6, 7], [1, 2, 4, 4, 5, 5, 6, 7, 7, 9]]
        
        //act + assert
        
        for i in 0..<2 {
            var expected = tests[i]
            expected.sort()
            
            print("Testing with array of \((i+1)*5) integers")
            XCTAssertEqual(testsexpected[i], quicksorting.quickSort(tests[i]))
        }
    }
    
    func testQuickSortWithErroneousArrays() {
        //arrange
        let quicksorting = QuickSort()
                        
        let allSame = [1, 1, 1, 1, 1, 1, 1, 1, 1]
        
        //act + assert
        var allSameExpected = allSame
        allSameExpected.sort()

        print("Testing with array with all the same numbers: ")
        XCTAssertEqual(allSameExpected, quicksorting.quickSort(allSame))
        
    }
    
    func testQuickSortWithBoundaryCaseArrays() {
        // arrange
        let quicksorting = QuickSort()
        
        let zeroLength = [Int]()
        
        //act + assert
        
        var zeroLengthExpected = zeroLength
        zeroLengthExpected.sort()
        
        print("Testing with Zero Length Array: ")
        XCTAssertEqual(zeroLengthExpected, quicksorting.quickSort(zeroLength))

    }
    
    func testQuickSortPerformanceWithLongArray() {
        // arrange
        let quicksorting = QuickSort()
        
        var veryLongLengthArray = [Int]()
        for _ in 0..<10000 {
            veryLongLengthArray.append(Int.random(in: -100...100))
        }
        
        var veryLongLengthArrayExpected = veryLongLengthArray
        veryLongLengthArrayExpected.sort()
        
        // act + assert
        print("Testing with very long length Array: ")
        
        measure {
            XCTAssertEqual(veryLongLengthArrayExpected, quicksorting.quickSort(veryLongLengthArray))
        }
    }
    
    func testQuickSortWithValidArrays() {
        
        //arrange
        let quicksorting = QuickSort()
        
        let size_5_random = [4, 5, 2, 7, 6]
        
        let size_10_random = [1, 7, 5, 6, 4, 4, 2, 7, 5, 9]

        
        let tests = [size_5_random, size_10_random]
        let testsexpected = [[2, 4, 5, 6, 7], [1, 2, 4, 4, 5, 5, 6, 7, 7, 9]]
        
        //act + assert
        
        for i in 0..<2 {
            var expected = tests[i]
            expected.sort()
            
            print("Testing with array of \((i+1)*5) integers")
            XCTAssertEqual(testsexpected[i], quicksorting.quickSort(tests[i]))
        }
    }
    
    func testQuickSortWithErroneousArrays() {
        //arrange
        let quicksorting = QuickSort()
                        
        let allSame = [1, 1, 1, 1, 1, 1, 1, 1, 1]
        
        //act + assert
        var allSameExpected = allSame
        allSameExpected.sort()

        print("Testing with array with all the same numbers: ")
        XCTAssertEqual(allSameExpected, quicksorting.quickSort(allSame))
        
    }
    
    func testQuickSortWithBoundaryCaseArrays() {
        // arrange
        let quicksorting = QuickSort()
        
        let zeroLength = [Int]()
        
        //act + assert
        
        var zeroLengthExpected = zeroLength
        zeroLengthExpected.sort()
        
        print("Testing with Zero Length Array: ")
        XCTAssertEqual(zeroLengthExpected, quicksorting.quickSort(zeroLength))

    }
    
    func testQuickSortPerformanceWithLongArray() {
        // arrange
        let quicksorting = QuickSort()
        
        var veryLongLengthArray = [Int]()
        for _ in 0..<10000 {
            veryLongLengthArray.append(Int.random(in: -100...100))
        }
        
        var veryLongLengthArrayExpected = veryLongLengthArray
        veryLongLengthArrayExpected.sort()
        
        // act + assert
        print("Testing with very long length Array: ")
        
        measure {
            XCTAssertEqual(veryLongLengthArrayExpected, quicksorting.quickSort(veryLongLengthArray))
        }
    }
}




