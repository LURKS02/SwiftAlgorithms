//
//  main.swift
//  Algorithms
//
//  Created by 디해 on 2023/01/24.
//

import Foundation
var timeInsert = readLine()!.split(separator: " ").map{Int($0)!}

var hour = timeInsert[0]
var minute = timeInsert[1]

var runningInsert = Int(readLine()!)!
var addHour, addMinute: Int
if runningInsert >= 60 {
    addHour = runningInsert / 60
    addMinute = runningInsert % 60
} else {
    addHour = 0
    addMinute = runningInsert
}

hour += (addHour + (minute + addMinute)/60)
minute = (minute + addMinute)%60

if (hour >= 24) {
    hour = hour % 24
}

print("\(hour) \(minute)")
