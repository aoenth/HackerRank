//
//  DiagonalDifference.swift
//  Hackerrank
//
//  Created by Kevin on 2017-06-28.
//  Copyright © 2017 Monorail Apps. All rights reserved.
//


class DiagonalDifference: HackerRankChallenge {
    override init(numInputs: Int) {
        
        super.init(numInputs: 0)
//        let a = input[0] as! [Int]
//        let b = input[1] as! [Int]
//        let c = input[1] as! [Int]
//        let d = input[1] as! [Int]
        input = [
        [11, 2, 4],
        [4, 5, 6],
        [10, 8, -12]]
        
        var diff = 0
//        print("\(input.endIndex)")
        for i in 0..<input.count {
            diff += input[i][i] as! Int - (input[i][input[i].endIndex - i - 1] as! Int)
            print("Iteration \(i): \(input[i][i] as! Int) subtracted \(input[i][input[i].endIndex - i - 1] as! Int) equals \(input[i][i] as! Int - (input[i][input[i].endIndex - i - 1] as! Int))")
        }
        print("The difference is \(abs(diff))")
    }
}
