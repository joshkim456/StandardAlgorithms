
import XCTest

final class SortingTests: XCTestCase {
    
    func testMergeSortWithValidArrays() {
        
        //arrange
        let merging = MergeSort()
        
        let size_5 = [4, 5, 2, 7, 6]
        
        let size_10 = [1, 7, 5, 6, 4, 4, 2, 7, 5, 9]
        
        let tests = [size_5, size_10]
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
    
    func testMergeSortPerformanceWithDifferentSizeArrays() {
        // arrange
        let mergesorting = MergeSort()
        
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
        
        
        var size_5_array_expected = size_5_array
        size_5_array_expected.sort()
        
        var size_50_array_expected = size_50_array
        size_50_array_expected.sort()
        
        var size_500_array_expected = size_500_array
        size_500_array_expected.sort()
        
        // act + assert
        print("Testing with length 5 array: ")
        measure {
            XCTAssertEqual(size_5_array_expected, mergesorting.mergeSort(size_5_array))
        }
        
        print("Testing with length 50 array: ")
        measure {
            XCTAssertEqual(size_50_array_expected, mergesorting.mergeSort(size_50_array))
        }
        
        print("Testing with length 500 array: ")
        measure {
            XCTAssertEqual(size_500_array_expected, mergesorting.mergeSort(size_500_array))
        }
    }
    
    func testQuickSortWithValidArrays() {
        
        //arrange
        let quicksorting = QuickSort()
        
        let size_5 = [4, 5, 2, 7, 6]
        
        let size_10 = [1, 7, 5, 6, 4, 4, 2, 7, 5, 9]

        
        let tests = [size_5, size_10]
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
    
    func testQuickSortPerformanceWithDifferentSizeArrays() {
        // arrange
        let quicksorting = QuickSort()
        
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
        
        
        var size_5_array_expected = size_5_array
        size_5_array_expected.sort()
        
        var size_50_array_expected = size_50_array
        size_50_array_expected.sort()
        
        var size_500_array_expected = size_500_array
        size_500_array_expected.sort()
        
        // act + assert
        print("Testing with length 5 array: ")
        measure {
            XCTAssertEqual(size_5_array_expected, quicksorting.quickSort(size_5_array))
        }
        
        print("Testing with length 50 array: ")
        measure {
            XCTAssertEqual(size_50_array_expected, quicksorting.quickSort(size_50_array))
        }
        
        print("Testing with length 500 array: ")
        measure {
            XCTAssertEqual(size_500_array_expected, quicksorting.quickSort(size_500_array))
        }
    }
    
    func testBubbleSortWithValidArrays() {
        
        //arrange
        let bubblesorting = BubbleSort()
        
        let size_5 = [4, 5, 2, 7, 6]
        
        let size_10 = [1, 7, 5, 6, 4, 4, 2, 7, 5, 9]

        
        let tests = [size_5, size_10]
        let testsexpected = [[2, 4, 5, 6, 7], [1, 2, 4, 4, 5, 5, 6, 7, 7, 9]]
        
        //act + assert
        
        for i in 0..<2 {
            var expected = tests[i]
            expected.sort()
            
            print("Testing with array of \((i+1)*5) integers")
            XCTAssertEqual(testsexpected[i], bubblesorting.bubbleSort(tests[i]))
        }
    }
    
    func testBubbleSortWithErroneousArrays() {
        //arrange
        let bubblesorting = BubbleSort()
                        
        let allSame = [1, 1, 1, 1, 1, 1, 1, 1, 1]
        
        //act + assert
        var allSameExpected = allSame
        allSameExpected.sort()

        print("Testing with array with all the same numbers: ")
        XCTAssertEqual(allSameExpected, bubblesorting.bubbleSort(allSame))
        
    }
    
    func testBubbleSortWithBoundaryCaseArrays() {
        // arrange
        let bubblesorting = BubbleSort()
        
        let zeroLength = [Int]()
        
        //act + assert
        
        var zeroLengthExpected = zeroLength
        zeroLengthExpected.sort()
        
        print("Testing with Zero Length Array: ")
        XCTAssertEqual(zeroLengthExpected, bubblesorting.bubbleSort(zeroLength))

    }
    
    func testBubbleSortPerformanceWithDifferentSizeArrays() {
        // arrange
        let bubblesorting = BubbleSort()
        
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
        
        
        var size_5_array_expected = size_5_array
        size_5_array_expected.sort()
        
        var size_50_array_expected = size_50_array
        size_50_array_expected.sort()
        
        var size_500_array_expected = size_500_array
        size_500_array_expected.sort()
        
        // act + assert
        print("Testing with length 5 array: ")
        measure {
            XCTAssertEqual(size_5_array_expected, bubblesorting.bubbleSort(size_5_array))
        }
        
        print("Testing with length 50 array: ")
        measure {
            XCTAssertEqual(size_50_array_expected, bubblesorting.bubbleSort(size_50_array))
        }
        
        print("Testing with length 500 array: ")
        measure {
            XCTAssertEqual(size_500_array_expected, bubblesorting.bubbleSort(size_500_array))
        }
    }
    
    func testInsertionSortWithValidArrays() {
        
        //arrange
        let isorting = InsertionSort()
        
        let size_5 = [4, 5, 2, 7, 6]
        
        let size_10 = [1, 7, 5, 6, 4, 4, 2, 7, 5, 9]

        
        let tests = [size_5, size_10]
        let testsexpected = [[2, 4, 5, 6, 7], [1, 2, 4, 4, 5, 5, 6, 7, 7, 9]]
        
        //act + assert
        
        for i in 0..<2 {
            var expected = tests[i]
            expected.sort()
            
            print("Testing with array of \((i+1)*5) integers")
            XCTAssertEqual(testsexpected[i], isorting.insertionSort(tests[i]))
        }
    }
    
    func testInsertionSortWithErroneousArrays() {
        //arrange
        let isorting = InsertionSort()
                        
        let allSame = [1, 1, 1, 1, 1, 1, 1, 1, 1]
        
        //act + assert
        var allSameExpected = allSame
        allSameExpected.sort()

        print("Testing with array with all the same numbers: ")
        XCTAssertEqual(allSameExpected, isorting.insertionSort(allSame))
        
    }
    
    func testInsertionSortWithBoundaryCaseArrays() {
        // arrange
        let bubblesorting = BubbleSort()
        
        let zeroLength = [Int]()
        
        //act + assert
        
        var zeroLengthExpected = zeroLength
        zeroLengthExpected.sort()
        
        print("Testing with Zero Length Array: ")
        XCTAssertEqual(zeroLengthExpected, bubblesorting.bubbleSort(zeroLength))

    }
    
    func testInsertionSortPerformanceWithDifferentSizeArrays() {
        // arrange
        let isorting = InsertionSort()
        
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
        
        
        var size_5_array_expected = size_5_array
        size_5_array_expected.sort()
        
        var size_50_array_expected = size_50_array
        size_50_array_expected.sort()
        
        var size_500_array_expected = size_500_array
        size_500_array_expected.sort()
        
        // act + assert
        print("Testing with length 5 array: ")
        measure {
            XCTAssertEqual(size_5_array_expected, isorting.insertionSort(size_5_array))
        }
        
        print("Testing with length 50 array: ")
        measure {
            XCTAssertEqual(size_50_array_expected, isorting.insertionSort(size_50_array))
        }
        
        print("Testing with length 500 array: ")
        measure {
            XCTAssertEqual(size_500_array_expected, isorting.insertionSort(size_500_array))
        }
    }
}




