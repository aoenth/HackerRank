//
//  Staircase.swift
//  HackerRank
//
//  Created by Kevin on 2017-06-28.
//  Copyright © 2017 Monorail Apps. All rights reserved.
//

class Staircase: HackerRankChallenge {
    override init(numInputs: Int) {
        super.init(numInputs: numInputs)
        
        let pounds = input[0][0] as! Int
        for i in stride(from: pounds, to: 0, by: -1) {
            print(String(repeating: " ", count: i - 1), terminator: "")
            print(String(repeating: "#", count: pounds - i + 1))
        }
    }
}
