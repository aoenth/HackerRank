//
//  AlternatingCharacters.swift
//  HackerRank
//
//  Created by Kevin on 2017-07-09.
//  Copyright © 2017 Monorail Apps. All rights reserved.
//



class AlternatingCharacters: HackerRankChallenge {
    override init(numInputs: Int) {
        super.init(numInputs: 0)
        let numInputsCustom = Int(readLine()!)!
        var outputs = [Int]()
        for _ in 0..<numInputsCustom {
            let line = readLine()!
            var startingChar = ""
            var deletionCount = 0
            for (_, c) in line.characters.enumerated() {
                if String(c) == startingChar {
                    deletionCount += 1
                }
                startingChar = String(c)
            }
            outputs.append(deletionCount)
            
        }
        for i in outputs {
            print(i)
        }
        
        
    }
}
