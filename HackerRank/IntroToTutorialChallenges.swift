//
//  IntroToTutorialChallenges.swift
//  HackerRank
//
//  Created by Kevin on 2017-06-28.
//  Copyright © 2017 Monorail Apps. All rights reserved.
//

class IntroToTutorialChallenges: HackerRankChallenge {
    override init(numInputs: Int) {
        super.init(numInputs: numInputs)
        let a = input[0][0] as! Int
        let c = input[2] as! [Int]
        
        let index = c.index(of: a)!
        print("\(index)")
    }
}
