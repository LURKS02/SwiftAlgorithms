//
//  main.swift
//  Algorithms
//
//  Created by 디해 on 2023/01/24.
//

import Foundation
var numList = [Int](repeating: 0, count: 30)

for _ in 0..<28 {
    var inputVal = Int(readLine()!)!
    numList[inputVal - 1] = 1
}

for i in 0..<30 {
    if numList[i] != 1 {
        print(i + 1)
    }
}
