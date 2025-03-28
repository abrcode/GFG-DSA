//
//  MoveAllZerosEnd.swift
//  
//
//  Created by Aniket Rao on 26/03/25.
//

import Foundation
// MARK: - Move all zeros to end of array
//Input: arr[] = [1, 2, 0, 4, 3, 0, 5, 0]
//Output: arr[] = [1, 2, 4, 3, 5, 0, 0, 0]
//Explanation: There are three 0s that are moved to the end.

func moveAllZeros(_ nums : [Int]) -> [Int] {

    var nums = nums
    
    // MARK: - Using Temp Array
    
    var tempArray = Array(repeating: [], count : nums.count)
    var j = 0
    
    // Add non zero into temp array first
    for value in nums {
        if value != 0 {
            tempArray[j] = nums[i]
            j += 1
        }
    }
    
    while j < nums.count {
        tempArray[j] = 0
        j += 1
    }
    
    return tempArray
}

