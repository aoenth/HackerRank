//
//  AVeryBigSum.swift
//  Hackerrank
//
//  Created by Kevin on 2017-06-28.
//  Copyright © 2017 Monorail Apps. All rights reserved.
//

import Foundation

class AVeryBigSum:HackerRankChallenge {
    override init(numInputs: Int) {
        super.init(numInputs: numInputs)
        let a = input[0] as! [Int]
        let b = input[1] as! [Int]
        var sum = 0
        for i in b {
            sum += i
        }
        print("For \(a) inputs, the final sum is: \(sum)")
    }
}
