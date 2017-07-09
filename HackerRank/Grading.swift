//
//  Grading.swift
//  HackerRank
//
//  Created by Kevin on 2017-06-28.
//  Copyright © 2017 Monorail Apps. All rights reserved.
//


class Grading: HackerRankChallenge {
    override init(numInputs: Int) {
        super.init(numInputs: 0)
        var b = [Int]()
        let n = readLine()!
        for _ in 0..<Int(n)! {
            b.append(Int(readLine()!)!)
        }
        for i in b {
            if (i % 5 == 3 || i % 5 == 4) && i >= 38 {
                let newScore = (i / 5 + 1 ) * 5
                print("\(newScore)")
            } else {
                print("\(i)")
            }
        }
    }
}
