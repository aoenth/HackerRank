//
//  main.swift
//  HackerRank
//
//  Created by Kevin on 2017-06-28.
//  Copyright © 2017 Monorail Apps. All rights reserved.
//

import Foundation

print("Welcome to HackerRank")
var challenges = [
    "Compare The Triplets",
    "A Very Big Sum",
    "Diagonal Difference",
    "Plus Minus"]

var index = 1
for c in challenges {
    print("\(index): \(c)")
    index += 1
}


var v:String!
let numberCharacters = CharacterSet.decimalDigits.inverted
repeat {
    v = readLine()!
} while !(!v.isEmpty && v.rangeOfCharacter(from:numberCharacters) == nil)

switch Int(v)! {
case 1:
    let _ = CompareTheTriplets(numInputs: 2)
case 2:
    let _ = AVeryBigSum(numInputs: 2)
case 3:
    let _ = DiagonalDifference(numInputs: 3)
case 4:
    let _ = PlusMinus(numInputs:2)
default:
    print("Challenge not found")
}
