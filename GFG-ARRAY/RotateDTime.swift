//
//  RotateDTime.swift
//  
//
//  Created by Aniket Rao on 26/03/25.
//
import Foundation
// MARK: - Rotate an Array by d – Counterclockwise or Left

//Input: arr[] = {1, 2, 3, 4, 5, 6}, d = 2
//Output: {3, 4, 5, 6, 1, 2}

func rotateArray(_ nums: [Int], d : Int) -> [Int] {
    
    var nums = nums
    var counter = 0
    
    while counter < d {
        
        var lastValue = nums.removeLast()
        nums.insert(lastValue, at : 0)
        counter += 1
        
    }
    
    return nums
}
