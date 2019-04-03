//: [Previous](@previous)

//: # page6 : string
import Foundation

var swift = "Swift is fun" // Swift is fun
swift.dropFirst(9) // fun

let cafee = "caf\u{0065}\u{0301}" // café
cafee.dropFirst(4) // ""
cafee.dropLast()

cafee.unicodeScalars.forEach { print($0) }
cafee.utf8.forEach { print($0) }
cafee.utf16.forEach { print($0) }

cafee.unicodeScalars.dropLast(1) // cafe
cafee.utf16.dropLast(1)          // cafe
cafee.utf8.dropLast(1)           // cafe�

cafee.count // 4

cafee.startIndex // 0
cafee.endIndex   // 5

// 1. Get character Index
// 起始位置 和 偏移量

extension String {
    subscript(index: Int) -> Character {
        guard let index = self.index(startIndex,offsetBy: index, limitedBy: endIndex) else {
            fatalError("String index out of range.")
        }
        
        return self[index]
    }
}

cafee[3] // é


// entension string 采用集合当中的方法

// 获取前几位字符串
let beg = cafee.startIndex
let end = cafee.index(beg, offsetBy: 3)
cafee[beg ..< end]

cafee.prefix(3)

var mixStr = "swift 很有趣"
for (index , value) in mixStr.enumerated(){
    print("\(index) \(value)")
}

// 插入字符串
if let index = mixStr.index(of: "很") {
    mixStr.insert(contentsOf: " 3.0", at: index)
}

// 替换字符串
if let cnIndex = mixStr.index(of: "很"){
    mixStr.replaceSubrange(cnIndex ..< mixStr.endIndex, with: " is interesting!")
}

// 获取最后几个字符
mixStr.suffix(12).dropLast()

// 拆分字符串, 以空格为分隔符
mixStr.split(separator: " ")

// 分割字符串中的奇数字符 
var i = 0
mixStr.split { _ in
    if(i > 0){
        i = 0
        return true
    }else{
        i += 1
        return false
    }
}

//: [Next](@next)
