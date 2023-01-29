//
//  main.swift
//  Algorithms
//
//  Created by 디해 on 2023/01/29.
//

import Foundation
var inputArr = readLine()!.split(separator: " ").map{Int($0)!}
var gradeArr = readLine()!.split(separator: " ").map{Int($0)!}

print(gradeArr.sorted(by: >)[inputArr[1] - 1])
