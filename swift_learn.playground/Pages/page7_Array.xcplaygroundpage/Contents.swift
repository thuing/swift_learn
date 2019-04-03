//: [Previous](@previous)

//: # page7 : Array

import UIKit

// Create an empty array

var array1: Array<Int> = Array<Int>()
var array2: [Int] = []
var array3 = array2

// initialization with values

var threeInts = [Int](repeating: 3, count: 3)
var sixInts = threeInts + threeInts
var fiveInts = [1,2,3,4,5]


// 基本属性
fiveInts.count
array1.isEmpty

// 访问数组元素
fiveInts[2] // 不推荐，要保证索引安全

fiveInts[0...2]
type(of: fiveInts[0..<2]) // 只存储索引位置

// 遍历所有元素

for value in fiveInts {
    print(value)
}

for (index, value) in fiveInts.enumerated(){
    print("\(index) : \(value)")
}

fiveInts.forEach { print( $0 ) }


// 修改数组
array1.append(1)
array1 += [2,3,4]

array1.insert(0, at: array1.startIndex ) // [0 ... array.endIndex]

array1.remove(at: 4)
array1.removeLast()
type(of: array1.removeLast())
type(of: array1.popLast())

// 寻找数组中的位置
let oneIndex = array1.index { $0 == 1 }
oneIndex

print(array1.filter { $0 % 2 == 0 })

array1.first
array1.last



// Array 与 NSArray

var a = [1,2,3]
let copyA = a

func getBufferAddress<T>(array: [T]) -> String{
    return array.withUnsafeBufferPointer {
            return String(describing: $0)
    }
}

getBufferAddress(array: a)
getBufferAddress(array: copyA)
a.append(4)
getBufferAddress(array: a)
getBufferAddress(array: copyA) // Copy on write

// NSArray

let b = NSMutableArray(array: [1,2,3])
let copyB: NSArray = b
let deepCopyB = b.copy() as! NSArray

b.insert(0, at: 0)
copyB


// 用closure参数化对数组元素变形


var fibonacci = [0,1,1,2,3,5]
var squares = [Int]()

for value in fibonacci{
    squares.append(value * value)
}

let constSquares = fibonacci.map{ $0 * $0}
constSquares

extension Array{
    func myMap<T>(_ transfrom:(Element) -> T) -> [T] {
        var tmp:[T] = []
        tmp.reserveCapacity(count)
        
        for value in self{
            tmp.append(transfrom(value))
        }
        return tmp
    }
}

print(fibonacci.myMap{ $0 * $0 })

fibonacci.min()
fibonacci.max()

fibonacci.filter{ $0 % 2 == 0}

fibonacci.elementsEqual([0,1,2], by: { $0 == $1 })
fibonacci.starts(with: [0,1,1], by: { $0 == $1 })

fibonacci.forEach{ print($0) }

// 排序
fibonacci.sorted()
fibonacci.sorted(by: >) // { $0 > $1 }

// 分类
let pivot = fibonacci.partition(by: { $0 < 1 })
fibonacci[0..<pivot]  // pivot 表示不满足的个数
fibonacci[pivot..<fibonacci.endIndex]
pivot

// 合并
fibonacci.reduce(0, +) // 数组相加

extension Array{
    // 累加
    func accmulate<T>(_ initial:T, _ nextAccmulate:(T, Element) -> T ) ->[T]{
        var sum = initial
        
        return map {
            sum = nextAccmulate(sum, $0)
            return sum
        }
    }
}

fibonacci.accmulate(0, +)







//: [Next](@next)
