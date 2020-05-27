//
//  main.swift
//  swift for command
//
//  Created by luoyao on 2018/12/19.
//  Copyright © 2018 luoyao. All rights reserved.
//

import Foundation

//----------Basics-------------

//使用关键字 let 来声明常量，使用关键字 var 来声明变量
let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0
//你可以在一行中声明多个变量或常量，用逗号分隔
var x1 = 0.0,y1 = 0.0,z1 = 0.0
let x2 = 0.01,y2 = 0.01,z2 = 0.01
//指定类型，Type Annotations
var welcomeMessage: String = ""
//你可以在一行中定义多个相关的变量为相同的类型，用逗号分隔，只要在最后的变量名字后边加上类型标注
var red, green, blue: Double
//常量和变量的名字几乎可以使用任何字符，甚至包括 Unicode 字符
//一旦你声明了一个确定类型的常量或者变量，就不能使用相同的名字再次进行声明，也不能让它改存其他类型的值。常量和变量之间也不能互换。
let π = 3.14159
let 你好 = "你好世界"
let ？？ = "dogcow"  //这个地方的问好必须是中文的，英文的问号是不可以的

//改变一个变量的值
var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"

//常量的值一旦设定则不能再被改变。尝试这么做将会在你代码编译时导致报错
//let languageName = "Swift"
//languageName = "Swift++"

//打印
print(friendlyWelcome)
// 这是一个注释
/* this is also a comment,
 but written over multiple lines */
//嵌套注释
/* 这是第一个多行注释的开头
 /* 这是第二个嵌套在内的注释块 */
 这是第一个注释块的结尾*/
//和许多其他的语言不同，Swift 并不要求你在每一句代码结尾写分号（ ; ），当然如果你想写的话也没问题。总之，如果你想在一行里写多句代码，分号还是需要的。
let cat = "?"; print(cat)  // 输出 "?"

//整数
/*Swift 提供了 8，16，32 和 64 位编码的有符号和无符号整数，这些整数类型的命名方式和 C 相似，
 例如 8 位无符号整数的类型是 UInt8 ，32 位有符号整数的类型是 Int32 。与 Swift 中的其他类型相同，这些整数类型也用开头大写命名法
 */
//范围
let minValue = UInt8.min // 最小值是 0, 值的类型是 UInt8
let maxValue = UInt8.max // 最大值是 255, 值得类型是 UInt8
//print(minValue);print(maxValue)
print("------------\(minValue)--------\(maxValue)")
//Int
/*
 在大多数情况下，你不需要在你的代码中为整数设置一个特定的长度。Swift 提供了一个额外的整数类型： Int ，它拥有与当前平台的原生字相同的长度。
 在32位平台上， Int 的长度和 Int32 相同。
 在64位平台上， Int 的长度和 Int64 相同。
 */
let minIntValue = Int.min
let maxIntVlues = Int.max
print(minIntValue);print(maxIntVlues)
/*
 UInt
 
 Swift 也提供了一种无符号的整数类型， UInt ，它和当前平台的原生字长度相同。
 
 在32位平台上， UInt 长度和 UInt32 长度相同。
 在64位平台上， UInt 长度和 UInt64 长度相同。
 注意
 只在的确需要存储一个和当前平台原生字长度相同的无符号整数的时候才使用 UInt 。其他情况下，推荐使用 Int ，即使已经知道存储的值都是非负的。如同类型安全和类型推断中描述的那样，统一使用 Int  会提高代码的兼容性，同时可以避免不同数字类型之间的转换问题，也符合整数的类型推断
 */

//浮点数
/*
 浮点数是有小数的数字，比如 3.14159 , 0.1 , 和 -273.15 。
 浮点类型相比整数类型来说能表示更大范围的值，可以存储比 Int 类型更大或者更小的数字。Swift 提供了两种有符号的浮点数类型。
 
 Double代表 64 位的浮点数。
 Float 代表 32 位的浮点数。
 注意
 Double 有至少 15 位数字的精度，而 Float 的精度只有 6 位。具体使用哪种浮点类型取决于你代码需要处理的值范围。在两种类型都可以的情况下，推荐使用 Double 类型。
 */

//类型安全和类型推断

//数值型字面量

//类型别名
/*类型别名可以为已经存在的类型定义了一个新的可选名字。用 typealias 关键字定义类型别名
 */
typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min
print(maxAmplitudeFound)

//布尔值
/*Swift 有一个基础的布尔量类型，就是 Bool ，布尔量被作为逻辑值来引用，因为他的值只能是真或者假。
 Swift为布尔量提供了两个常量值， true 和 false
 */
let orangesAreOrange = true
let turnipsAreDelicious = false
if turnipsAreDelicious {
    print("Mmm, tasty turnips!")
} else {
    print("Eww, turnips are horrible.")
}

//元组
/*元组把多个值合并成单一的复合型的值。元组内的值可以是任何类型，而且可以不必是同一类型
 (404, "Not Found") 元组把一个 Int  和一个 String  组合起来表示 HTTP 状态代码的两种不同的值：数字和人类可读的描述。他可以被描述为“一个类型为 (Int, String)  的元组”
 任何类型的排列都可以被用来创建一个元组，他可以包含任意多的类型。例如 (Int, Int, Int) 或者 (String, Bool) ，实际上，任何类型的组合都是可以的。
 */
let http404Error = (404, "Not Found")
//你也可以将一个元组的内容分解成单独的常量或变量，这样你就可以正常的使用它们了
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
// prints "The status code is 404"
print("The status message is \(statusMessage)")
// prints "The status message is Not Found"

//当你分解元组的时候，如果只需要使用其中的一部分数据，不需要的数据可以用下滑线（ _ ）代替
let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")
// prints "The status code is 404"

//另外一种方法就是利用从零开始的索引数字访问元组中的单独元素
print("The status code is \(http404Error.0)")
// prints "The status code is 404"
print("The status message is \(http404Error.1)")
// prints "The status message is Not Found"

//你可以在定义元组的时候给其中的单个元素命名
//在命名之后，你就可以通过访问名字来获取元素的值了
let http200Status = (statusCode: 200, description: "OK")
print("The status code is \(http200Status.statusCode)")
// prints "The status code is 200"
print("The status message is \(http200Status.description)")
// prints "The status message is OK"

/*
 元组在临时的值组合中很有用，但是它们不适合创建复杂的数据结构。如果你的数据结构超出了临时使用的范围，那么请建立一个类或结构体来代替元组
 */

//可选项
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
// convertedNumber is inferred to be of type "Int?", or "optional Int"

//nil
/*你可以通过给可选变量赋值一个 nil 来将之设置为没有值
 nil 不能用于非可选的常量或者变量，如果你的代码中变量或常量需要作用于特定条件下的值缺失，可以给他声明为相应类型的可选项
 */
var serverResponseCode: Int? = 404
// serverResponseCode contains an actual Int value of 404
serverResponseCode = nil
// serverResponseCode now contains no value
//如果你定义的可选变量没有提供一个默认值，变量会被自动设置成 nil
var surveyAnswer: String?
// surveyAnswer is automatically set to nil
//print(surveyAnswer)

//你可以在同一个 if 语句中包含多可选项绑定，用逗号分隔即可。如果任一可选绑定结果是 nil 或者布尔值为 false ，那么整个 if 判断会被看作 false
if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}

//隐式展开可选项
let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // requires an exclamation mark

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // no need for an exclamation mark

//错误处理
func canThrowAnError() throws {
    // this function may or may not throw an error
}
do {
    try canThrowAnError()
    // no error was thrown
} catch {
    // an error was thrown
}

//func makeASandwich() throws {
//    // ...
//}
//
//do {
//    try makeASandwich()
//    eatASandwich()
//} catch Error.OutOfCleanDishes {
//    washDishes()
//} catch Error.MissingIngredients(let ingredients) {
//    buyGroceries(ingredients)
//}

//断言和先决条件
/*使用全局函数 assert(_:_:)  函数来写断言
 向 assert(_:_:) 函数传入一个结果为 true 或者 false 的表达式以及一条会在结果为 false 的时候显式的信息
 */
let age = -3
//assert(age >= 0, "A person's age cannot be less than zero")
// this causes the assertion to trigger, because age is not >= 0
//assert(age >= 0)
//if age > 10 {
//    print("You can ride the roller-coaster or the ferris wheel.")
//} else if age > 0 {
//    print("You can ride the ferris wheel.")
//} else {
//    assertionFailure("A person's age can't be less than zero.")
//}

//强制先决条件
/*你可以通过调用 precondition(_:_:file:line:) 函数来写先决条件。给这个函数传入表达式计算为 true 或 false ，
 如果条件的结果是 false 信息就会显示出来
 */
// In the implementation of a subscript...
//precondition(index > 0, "Index must be greater than zero.")
