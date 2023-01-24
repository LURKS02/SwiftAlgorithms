//
//  main.swift
//  Algorithms
//
//  Created by 디해 on 2023/01/24.
//

import Foundation

let N = Int(readLine()!)
let numList = readLine()!.split(separator: " ").map{Int($0)!}
let findNum = Int(readLine()!)
var count = 0
for num in numList {
    if (findNum == num) {
        count += 1
    }
}
print(count)
