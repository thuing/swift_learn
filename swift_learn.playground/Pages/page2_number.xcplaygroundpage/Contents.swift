//: [Previous](@previous)

//: # Page2 : Number

import Foundation

Int.min
Int.max

Int64.min
Int64.max

let fifteenInDecimal = 15 //十进制
let fifteenInHex = 0xF //十六进制
let fifteenInOctal = 0o17 //八进制
let fifteenInBinary = 0b1111 //二进制

// 定义千分位
let million = 1_000_000

// 定义浮点数
var oneThirdInFloat :Float = 1/3
var oneThirdInDouble :Double = 1/3

// 科学计数法
var PI = 314e-2
// 利用type查看类型
type(of: PI)

// 不同类型的数字不可直接相加 要类型转换
var test = Double(fifteenInDecimal) + oneThirdInDouble


//: [Next](@next)
