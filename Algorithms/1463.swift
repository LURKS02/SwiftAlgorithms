//
//  main.swift
//  Algorithms
//
//  Created by 디해 on 2023/01/25.
//

import Foundation

let inputNum = Int(readLine()!)!
var dp = Array(repeating: Int.max, count: inputNum + 1)

dp[0] = 0
dp[1] = 0

for i in 1...inputNum {
    dp[i] = min(dp[i], dp[i - 1] + 1)
    if i % 2 == 0 {
        dp[i] = min(dp[i], dp[i / 2] + 1)
    }
    if i % 3 == 0 {
        dp[i] = min(dp[i], dp[i / 3] + 1)
    }
}

print(dp[inputNum])
