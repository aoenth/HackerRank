//
//  TimeConversion.swift
//  HackerRank
//
//  Created by Kevin on 2017-06-28.
//  Copyright © 2017 Monorail Apps. All rights reserved.
//

class TimeConversion: HackerRankChallenge {
    override init(numInputs: Int) {
        super.init(numInputs: 0)
        let s = readLine()!
        let amPMDigit = s.index(s.startIndex, offsetBy: 8)
        let secondDigit = s.index(s.startIndex, offsetBy: 2)
        let timeString = s.substring(to: secondDigit)
        let amPM = s.substring(from: amPMDigit)
        var timeValue = amPM == "PM" ? Int(timeString)! + 12 : Int(timeString)!
        if timeValue == 24 {
            timeValue = 12
        } else if timeValue == 12 {
            timeValue = 0
        }
        let finalRange = secondDigit..<amPMDigit
        let formattedTimeValue = String(format: "%02d", timeValue)
        print("\(formattedTimeValue)\(s.substring(with: finalRange))")
        
    }
}
