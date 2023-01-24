//
//  File.swift
//  Algorithms
//
//  Created by 디해 on 2023/01/24.
//

import Foundation

var numList = readLine()!.split(separator: " ")
var num1 = Array(numList[0]).map{Int(String($0))!} //12345
var num2 = Array(numList[1]).map{Int(String($0))!} //123
num1.reverse() //5 4 3 2 1
num2.reverse() //3 2 1

let MAX_NUM: Int
let MIN_NUM: Int

if (num1.count > num2.count) {
    MAX_NUM = num1.count
    MIN_NUM = num2.count
    for _ in 0..<(MAX_NUM - MIN_NUM) {
        num2.append(0)
    }
} else {
    MAX_NUM = num2.count
    MIN_NUM = num1.count
    for _ in 0..<(MAX_NUM - MIN_NUM) {
        num1.append(0)
    }
}


var resultNum: [Int] = []
var addOne = 0

for i in 0..<MAX_NUM {
    var insertInt = num1[i] + num2[i] + addOne
    if (insertInt >= 10) {
        addOne = insertInt / 10
        resultNum.append(insertInt % 10)
    } else {
        addOne = 0
        resultNum.append(insertInt)
    }
}

if addOne != 0 {
    resultNum.append(addOne)
}

var resultInt: String = ""
resultNum.reverse()

for i in 0..<resultNum.count {
    resultInt += String(resultNum[i])
}
print(resultInt)
