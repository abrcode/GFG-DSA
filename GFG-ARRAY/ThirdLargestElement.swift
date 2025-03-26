//
//  ThirdLargestElement.swift
//  
//
//  Created by Aniket Rao on 26/03/25.
//

import Foundation

// MARK: - Third largest element in an array of distinct elements
//Input: arr[] = {1, 14, 2, 16, 10, 20}
//Output: 14


// MARK: - Using three variables
func thirLargest( _ nums : [Int] ) -> Int {
  
    var firstMax = Int.min
    var secondMax = Int.min
    var thirdMax = Int.min
    
    for value in nums {
        if value > firstMax {
            thirdMax = secondMax
            secondMax = firstMax
            firstMax = value
        } else if value > secondMax && value < firstMax {
            thirdMax = secondMax
            secondMax = value
        } else if thirdMax > value && value < secondMax {
            thirdMax = value
        }
    }
    
    return thirdMax
}



// MARK: - using thrre loops
func thirdMaximum(_ nums :[Int]) -> Int {
 
    var firstMax = Int.min
    for value in nums {
        if value > firstMax {
            firstMax = value
        }
    }
    
    var secondMax = Int.min
    for value in nums {
        if value > secondMax && value < firstMax {
            secondMax = value
        }
    }
    
    var thirdMax = Int.min
    for value in nums {
        if value > thirdMax && value < secondMax {
            thirdMax = value
        }
    }
    
    return thirdMax
}
