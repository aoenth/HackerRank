//
//  CamelCase.swift
//  HackerRank
//
//  Created by Kevin on 2017-07-09.
//  Copyright © 2017 Monorail Apps. All rights reserved.
//



class CamelCase: HackerRankChallenge {
    override init(numInputs: Int) {
        super.init(numInputs: 0)
        let inputString = readLine()
        var capCount = 0
        for (_, c) in inputString!.characters.enumerated() {
            let string = String(c)
            if string.lowercased() != string {
                capCount += 1
            }
        }
        print(capCount + 1)
    }
}
