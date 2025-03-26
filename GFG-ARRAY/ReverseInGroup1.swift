//
//  ReverseInGroup1.swift
//  
//
//  Created by Aniket Rao on 25/03/25.
//

// MARK: - Problem :- Given an array arr[] and an integer k, the task is to reverse every subarray formed by consecutive K elements.

//Input: arr[] = [1, 2, 3, 4, 5, 6, 7, 8, 9], k = 3
//Output: 3, 2, 1, 6, 5, 4, 9, 8, 7

func reverseInGroup(_ nums : [Int] , k : Int) -> [Int] {
    
    var nums = nums
    
    for i in stride(from: 0 , to: nums.count - 1, by : k) {
        
        var left = i
        var right = min( i + 2 , nums.count - 1)
        
        while left < right {
            
            var temp = nums[right]
            nums[right] = nums[left]
            nums[left] = temp
            left += 1
            right -1
        }
    }
    
    print(nums)
    return nums
}

print("Order :-> \(reverseInGroup([1, 2, 3, 4, 5, 6, 7, 8, 9], k: 3))")
