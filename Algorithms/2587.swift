//
//  main.swift
//  Algorithms
//
//  Created by 디해 on 2023/01/29.
//

import Foundation

var numArray: [Int] = []
var totalNum = 0
for _ in 0..<5 {
    var inputNum = Int(readLine()!)!
    numArray.append(inputNum)
    totalNum += inputNum
}

print(totalNum / 5)
print(numArray.sorted()[2])
