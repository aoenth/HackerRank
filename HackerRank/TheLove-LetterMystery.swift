//
//  TheLove-LetterMystery.swift
//  HackerRank
//
//  Created by Kevin on 2017-07-09.
//  Copyright © 2017 Monorail Apps. All rights reserved.
//

import Foundation

class TheLove_LetterMystery: HackerRankChallenge {
    override init(numInputs: Int) {
        super.init(numInputs: 0)
        let numInputsCustom = Int(readLine()!)!
        var outputs = [Int]()
        for _ in 0..<numInputsCustom {
            let line = readLine()!
            var reduceCount = 0
            let i = isPalindrome(string: line)
            reduceCount += i
            outputs.append(reduceCount)
        }
        for i in outputs {
            print(i)
        }
    }
    
    func isPalindrome(string: String) -> Int {
        let charCount = string.characters.count / 2
        var changes = 0
        let leftIndex = string.index(string.startIndex, offsetBy: charCount)
        let rightIndex = string.index(string.endIndex, offsetBy: -charCount)
        let leftString = string.substring(to: leftIndex).asciiArray
        let rightString = string.substring(from: rightIndex).asciiArray
        for i in 0..<leftString.count {
            let left = Int(leftString[i])
            let right = Int(rightString[rightString.endIndex - (i + 1)])
            let d = left - right
            changes += abs(d)
        }

        return changes
    }
}

extension Character {
    var asciiValue: UInt32? {
        return String(self).unicodeScalars.filter{$0.isASCII}.first?.value
    }
}

extension String {
    var asciiArray: [UInt32] {
        return unicodeScalars.filter{$0.isASCII}.map{$0.value}
    }
}
