//
//  main.swift
//  Algorithms
//
//  Created by 디해 on 2023/01/27.
//

import Foundation

var personInt = Int(readLine()!)!
var weight: [Int] = []
var height: [Int] = []
var rankNum = 1

var rankArr = Array(repeating: 0, count: personInt)

for _ in 0..<personInt {
    var inputPerson = readLine()!.split(separator: " ").map{Int($0)!}
    weight.append(inputPerson[0])
    height.append(inputPerson[1])
}

func compareNum(weightA: Int, heightA: Int, weightB: Int, heightB: Int) -> Bool {
    if (weightA < weightB && heightA < heightB) {
        return true
    }
    else {
        return false
    }
}

for i in 0..<personInt {
    var maxInt = 0
    for j in 0..<personInt {
        if (compareNum(weightA: weight[i], heightA: height[i], weightB: weight[j], heightB: height[j])) {
            maxInt += 1
        }
    }
    rankArr[i] = maxInt + 1
}

var outputStr = ""
for s in rankArr {
    outputStr += "\(s) "
}

print(outputStr)
