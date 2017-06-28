//
//  BirthdayCakeCandles.swift
//  HackerRank
//
//  Created by Kevin on 2017-06-28.
//  Copyright © 2017 Monorail Apps. All rights reserved.
//


class BirthdayCakeCandles: HackerRankChallenge {
    override init(numInputs: Int) {
        super.init(numInputs: numInputs)
        
        let b = input[1] as! [Int]
        let maxHeight = b.max()
        var validCandles = 0
        for i in b {
            if i == maxHeight {
                validCandles += 1
            }
        }
        print(validCandles)
    }
}
