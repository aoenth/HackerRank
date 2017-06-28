//
//  HackerrankChallenge.swift
//  Hackerrank
//
//  Created by Kevin on 2017-06-28.
//  Copyright © 2017 Monorail Apps. All rights reserved.
//

import Foundation

class HackerRankChallenge {
    var input = [[Any]]()
    init(numInputs: Int) {

        print("Welcome to \(type(of:self))")
        if numInputs == 0 {
            print("Inputs automatically loaded!")
        } else {
            print("Number of inputs required: \(numInputs)")
            for i in 1...numInputs {
                print("Input number \(i)")
                let tempLine = readLine()!.components(separatedBy: " ").map{ Int($0)! }
                input.append(tempLine)
            }
        }
    }
}
