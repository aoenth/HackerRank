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
            var line = readLine()!
            var reduceCount = 0
            while(isPalindrome(string: line) != 0) {
                let i = isPalindrome(string: line)
                let index: String.Index!
                let offsetBy: Int!
                if i > 0 {
                    index = line.startIndex
                    offsetBy = i - 1
                } else {
                    index = line.endIndex
                    offsetBy = i
                }
                let changingIndex = line.index(index, offsetBy: offsetBy)
                let changingChar = line[changingIndex]
                let changingCharASCII = changingChar.asciiValue! - 1
                line.replaceSubrange(changingIndex...changingIndex, with: String(describing:UnicodeScalar(changingCharASCII)!))
                print(line)
                reduceCount += 1
            }
            outputs.append(reduceCount)
        }
        for i in outputs {
            print(i)
        }
    }
    
    func isPalindrome(string: String) -> Int {
        let charCount = Double(string.characters.count)
        for i in 1 ... Int(ceil(charCount / 2)) {
            let leftIndex = string.index(string.startIndex, offsetBy: i - 1)
            let rightIndex = string.index(string.endIndex, offsetBy: -i)
            let leftChar = string[leftIndex]
            let rightChar = string[rightIndex]
//            print("\(i)/\(Int(ceil(charCount / 2))) : \(leftChar) and \(rightChar)")
            if leftChar > rightChar {
                return i
            } else if leftChar < rightChar {
                return -i
            }
        }
        return 0
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
