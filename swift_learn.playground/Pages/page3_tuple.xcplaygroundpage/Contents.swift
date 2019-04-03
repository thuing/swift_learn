//: [Previous](@previous)

//: # Page3 : tuple
import Foundation

let meInfo = (name: "fuu", no: "11", email: "123.@duh.ds")
meInfo.name
let success = (200,"HTTP OK")
let fileNotFound = (404,"File not found")
let redirect:(Int,String) = (302,"Temporary redirect")

// Tuple decomposition
var (successCode, successMessage) = success
successCode = 201
successMessage

success

// 忽略部分信息
var (_,errorMessage) = fileNotFound
errorMessage

// Tuple 比较 最多只允许六个字符
let tuple11 = (1,1)
let tuple12 = (1,2)
tuple11 < tuple12

//: [Next](@next)
