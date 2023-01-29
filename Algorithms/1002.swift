//
//  main.swift
//  Algorithms
//
//  Created by 디해 on 2023/01/29.
//

import Foundation

let T = Int(readLine()!)!
var inputStrs = [[Double]]()
for _ in 0..<T {
    inputStrs.append(readLine()!.split(separator: " ").map{Double($0)!})
}

func findCircle (x: (Double, Double), y: (Double, Double), z1: Double, z2: Double) -> Int {
    var dis = sqrt(pow(x.0 - y.0, 2) + pow(x.1 - y.1, 2))
    
    if (x.0 == y.0 && x.1 == y.1 ) {
        if (z1 == z2) {
            return -1
        }
        else {
            return 0
        }
    }
    
    else if (dis < z1 + z2 && dis > z1 - z2) {
        return 2
    }
    
    else if (dis == z1 + z2 || dis == z1 - z2) {
        return 1
    }
    
    else if (dis > z1 + z2 || dis < z1 - z2) {
        return 0
    }
    else {
        return -1
    }
}

for inputStr in inputStrs {
    let xDot = (inputStr[0], inputStr[1])
    let xDis = inputStr[2]
    
    let yDot = (inputStr[3], inputStr[4])
    let yDis = inputStr[5]
    
    
    print(findCircle(x: xDot, y: yDot, z1: (xDis > yDis ? xDis : yDis), z2: (xDis < yDis ? xDis : yDis)))
}
 
