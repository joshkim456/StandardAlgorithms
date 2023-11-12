
import XCTest

final class SortingTests: XCTestCase {
    
    struct SortingTestCase {
        let data: [Int]
        let expected: [Int]
    }
    
    func testAlgoWithValidArrays() {
        
        //arrange
        let merging = MergeSort()
        
        var size_5_random = [Int]()
        for _ in 0..<5 {
            size_5_random.append(Int.random(in: -10...10))
        }
        
        var size_10_random = [Int]()
        for _ in 0..<10 {
            size_10_random.append(Int.random(in: -10...10))
        }
        
        var size_15_random = [Int]()
        for _ in 0..<15 {
            size_15_random.append(Int.random(in: -10...10))
        }
        
        let tests = [size_5_random, size_10_random, size_15_random]
        
        //act + assert
        
        for i in 0..<3 {
            var expected = tests[i]
            expected.sort()
            
            print("Testing with array of \((i+1)*5) random integers")
            XCTAssertEqual(expected, merging.mergeSort(tests[i]))
        }
    }
    
    func testAlgoWithErroneousArrays() {
        //arrange
        let merging = MergeSort()
        
        // var exceedingIntegerLimits = [100000000000000, 1284712946815735123812, 123618263193619362936, -129749124961283582163921, -127497129379127391293712] Cannot be initialsed
        
        let stringTypesArray = ["Hello", "World", ".", "!"]
                
        let allSame = [1, 1, 1, 1, 1, 1, 1, 1, 1]
        
        //act + assert
        var stringTypesArrayExpected = stringTypesArray
        stringTypesArrayExpected.sort()
        
        var allSameExpected = allSame
        allSameExpected.sort()
        
        print("Testing with Array of strings")
        // XCTAssertEqual(stringTypesArrayExpected, merging.mergeSort(stringTypesArray)) Cannot be called (yet)
        
        print("Testing with array with all the same numbers: ")
        XCTAssertEqual(allSameExpected, merging.mergeSort(allSame))
        
    }
    
    func testAlgoWithBoundaryCaseArrays() {
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
}




