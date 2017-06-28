//
//  CompareTheTriplets.swift
//  Hackerrank
//
//  Created by Kevin on 2017-06-28.
//  Copyright © 2017 Monorail Apps. All rights reserved.
//

import Foundation

class CompareTheTriplets: HackerRankChallenge {

    override init(numInputs:Int) {
        super.init(numInputs:numInputs)
        var aScore:Int = 0, bScore:Int = 0
        let a = input[0] as! [Int]
        let b = input[1] as! [Int]
        for i in 0..<a.count {
            if a[i] > b[i] {
                aScore += 1
            } else if a[i] < b[i] {
                bScore += 1
            } else if a[i] == b[i] {
            } else {
                print("NaN!")
            }
        }
        
        print("\(aScore) \(bScore)")
    }
}
