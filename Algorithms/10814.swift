//
//  main.swift
//  Algorithms
//
//  Created by 디해 on 2023/01/29.
//

import Foundation

let N = Int(readLine()!)!
var inputPerson = [(Int, String)]()

for _ in 0..<N {
    var inputStr = readLine()!.split(separator: " ")
    inputPerson.append((Int(inputStr[0])!, String(inputStr[1])))
}

inputPerson.sorted(by: {lhs, rhs -> Bool in
    lhs.0 < rhs.0
}).forEach {
    print("\($0.0) \($0.1)")
}
