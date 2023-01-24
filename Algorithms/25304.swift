//
//  main.swift
//  Algorithms
//
//  Created by 디해 on 2023/01/24.
//

import Foundation

let total = Int(readLine()!)!
let caseVal = Int(readLine()!)!
var totalSum = 0

for _ in 0..<caseVal {
    var inputVal = readLine()!.split(separator: " ").map{Int($0)!}
    totalSum += inputVal[0]*inputVal[1]
}
if totalSum != total {
    print("No")
} else {
    print("Yes")
}
