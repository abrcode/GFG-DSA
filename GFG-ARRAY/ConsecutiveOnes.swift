//
//  ConsecutiveOnes.swift
//  
//
//  Created by Aniket Rao on 26/03/25.
//

import Foundation

// MARK: - Maximum consecutive one’s (or zeros) in a binary array
//Input: arr[] = {1, 1, 0, 0, 1, 0, 1, 0, 1, 1, 1, 1}
//Output: 4


func maxConsecutiveOnes( _ nums : [Int]) -> Int {
    
    /* just for consecutive ones
     
     var maxCount = 0
     var count = 0
     
     for index in 1..<nums.count {
     
     if (nums[index] == nums[index-1] && nums[index] == "1") {
     count += 1
     maxCount = max(maxCount,count)
     }
     
     } */
    
    var maxCount = 0
    var count = 1
    
    // MARK: - Normal iterative approach
//    for i in 1..<nums.count {
//        
//        if nums[i] == nums[i - 1] {
//            count += 1
//        } else {
//            
//            // If consecutive rule broken we need to check which consecutive max time (0s ,1s)
//            maxCount = max(count,maxCount)
//            
//            // Need to rest count as the consecutive value changes
//            count = 1
//        }
//    }
    
    
    // MARK: - Bit Manipulation
    for i in 1..< nums.count {
        
        if nums[i] ^ nums[i-1] == 0 {
            count += 1
        } else {
            maxCount = max(count,maxCount)
            count = 1
        }
    }
    
    return maxCount
}


// MARK: - Bit Manipulatio (XOR) -> Same value gives 0 and two distinct value gives 1


