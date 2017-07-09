//
//  main.swift
//  HackerRank
//
//  Created by Kevin on 2017-06-28.
//  Copyright © 2017 Monorail Apps. All rights reserved.
//

import Foundation

var programEnd = false

repeat {
    print("Welcome to HackerRank")
    
    var challenges = [
        "Compare The Triplets",
        "A Very Big Sum",
        "Diagonal Difference",
        "Plus Minus",
        "Staircase",
        "Mini-Max Sum",
        "Birthday Cake Candles",
        "Time Conversion",
        "CamelCase"]
    
    var index = 1
    for c in challenges {
        print("\(index): \(c)")
        index += 1
    }
    print("0: End Program")
    
    var v:String!
    let numberCharacters = CharacterSet.decimalDigits.inverted
    repeat {
        v = readLine()!
    } while !(!v.isEmpty && v.rangeOfCharacter(from:numberCharacters) == nil)
    
    
    var tryAgain = false
    
    repeat {
        switch Int(v)! {
        case 0:
            programEnd = true
            break
        case 1:
            let _ = CompareTheTriplets(numInputs: 2)
        case 2:
            let _ = AVeryBigSum(numInputs: 2)
        case 3:
            let _ = DiagonalDifference(numInputs: 3)
        case 4:
            let _ = PlusMinus(numInputs:2)
        case 5:
            let _ = Staircase(numInputs: 1)
        case 6:
            let _ = Mini_MaxSum(numInputs: 1)
        case 7:
            let _ = BirthdayCakeCandles(numInputs: 2)
        case 8:
            let _ = TimeConversion(numInputs: 1)
        case 9:
            let _ = CamelCase(numInputs: 1)
        default:
            print("Challenge not found")
        }
        
        if programEnd == true {break}
        
        print("")
        print("")
        sleep(2)
        var validInput = false
        repeat {
            print("Try Again? Y/N")
            let userChoice = readLine()
            if userChoice == "y" || userChoice == "Y" {
                tryAgain = true
                validInput = true
            } else if userChoice == "n" || userChoice == "N" {
                tryAgain = false
                validInput = true
            } else {
                validInput = false
            }
        } while (!validInput)
    } while (tryAgain)
    
} while (!programEnd)
