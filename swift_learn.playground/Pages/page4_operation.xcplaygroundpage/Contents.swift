//: [Previous](@previous)

//: # Page4 : operation
import Foundation

/* 定义操作符 */
var a = 10
var b = 20
var sum = a + b

// 8 % 2.5
8.truncatingRemainder(dividingBy: 2.5)

// 不支持b++
b += 1
b -= 1

let isEqual = sum == 10

// 三元条件运算符
isEqual ? "Yes" : "No"

// 如果为空时的操作符
let userInput: String? = "A user input"
userInput ?? "A default input"

// 范围操作符
for index in 1...3{
    print(index)
}


//: [Next](@next)
