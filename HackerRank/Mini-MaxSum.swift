//
//  Mini-MaxSum.swift
//  HackerRank
//
//  Created by Kevin on 2017-06-28.
//  Copyright © 2017 Monorail Apps. All rights reserved.
//

class Mini_MaxSum: HackerRankChallenge {
    override init(numInputs: Int) {
        super.init(numInputs: numInputs)
        var a = input[0] as! [Int]
        var sum = [Int]()
        for i in stride(from: 0, to: a.endIndex, by: 1) {
            let tempElement = a[i]
            var tempSum = 0
            a.remove(at: i)
            for j in stride(from: 0, to: a.endIndex, by: 1) {
                tempSum += a[j]
            }
            sum.append(tempSum)
            a.insert(tempElement, at: i)
        }
        print(sum.min()!, sum.max()!)
    }
}
