//
//  main.swift
//  Algorithms
//
//  Created by 디해 on 2023/01/29.
//

import Foundation

let N = Int(readLine()!)!
var inputStr = [String]()
for _ in 0..<N {
    inputStr.append(readLine()!)
}
Set(inputStr).sorted(by: {lhs, rhs -> Bool in
    return lhs.count < rhs.count || (lhs.count == rhs.count && lhs < rhs)
}).forEach {
    print($0)
}
