//
//  PlusMinus.swift
//  HackerRank
//
//  Created by Kevin on 2017-06-28.
//  Copyright © 2017 Monorail Apps. All rights reserved.
//


class PlusMinus: HackerRankChallenge {
    override init(numInputs:Int) {
        super.init(numInputs:numInputs)
        let a = input[0][0] as! Int
        let b = input[1] as! [Int]
        
        var pos = 0, neg = 0, zeros = 0
        for i in b {
            if i > 0 {pos += 1}
            else if i < 0 {neg += 1}
            else if i == 0 {zeros += 1}
        }
        print("Percent of Positive Numbers:")
        print(String(format: "%0.6f", Double(pos)/Double(a)))
        print("Percent of Negative Numbers:")
        print(String(format: "%0.6f", Double(neg)/Double(a)))
        print("Percent of Zeros:")
        print(String(format: "%0.6f", Double(zeros)/Double(a)))

    }
}
