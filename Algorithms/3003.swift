//
//  main.swift
//  Algorithms
//
//  Created by 디해 on 2023/01/24.
//

import Foundation

var nums = readLine()!.split(separator: " ").map{Int($0)!}

print(nums)
var nums2: [Int] = []

nums2.append(1 - nums[0])
nums2.append(1 - nums[1])
nums2.append(2 - nums[2])
nums2.append(2 - nums[3])
nums2.append(2 - nums[4])
nums2.append(8 - nums[5])
print("\(nums2[0]) \(nums2[1]) \(nums2[2]) \(nums2[3]) \(nums2[4]) \(nums2[5])")
