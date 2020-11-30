import UIKit
//變數和常數
let x = 10.0  //常數 這是 double
var r = 20    //alt 出現？ 可以查 r 的型別 Int
//x += 2 錯誤,這是常數
//型別＆繼承
var z:Double = 3.1416 // ：繼承 Double , 也是宣告型別的意思
var ans = Double(r * r) * z // Double() String() wrapper 轉型
ans = 2 * x * z
z += 2
//字串相加
let str = "Hello, playground"
print("ans = " + String(ans)) //wrapper 轉型
print("ans = \(ans)") // 自動轉型
print("str = \(str.uppercased())") // \() 字串轉型

//switch
let bonus = 5000
switch bonus {
case 10000...:
    print("switch 去巴黎和倫敦")
case 5000...9999:
    print("switch 去東京")
case 1000...4999:
    print("switch 去曼谷")
default:
     print("switch 待在家")
}
//Array = []
var 買書清單=["哈利波特","貓戰士","iOS程式設計"]
買書清單.append("精通 SwiftUI")
for book in 買書清單{
    print("陣列元素:\(book)")
}
for i in 0...買書清單.count-1{
    print("陣列元素:\(買書清單[i])")
}
//Dictionary = [_:_ , _:_]
var 通訊錄=["Eddie":"0920950208","Bonnie":"0936940690","Cathy":"不記得"]
for (k,v) in 通訊錄 {
    print("通訊錄-\(k):\(v)")
}

//查字典, 查不到 nil
var emojiDict:[String:String] = ["👻":"鬼","💩":"poop","😡":"生氣","😱":"Scream","👹":"怪物"]
var wordToLookup = "😱"
var meaning = emojiDict[wordToLookup] ?? ""
print(meaning)
wordToLookup = "☠️"
meaning = emojiDict[wordToLookup] ?? ""  // nil 判斷
print(meaning)
var meaning0 = emojiDict[wordToLookup]
if let meaning0 = meaning0 {
    print("查不到會閃退，" + meaning0)
}
// Optional (發生了nil) --> App 閃退
var str2:String
//print(str2) //編譯不過，要初始化，否則不能用
var job:String?
print(job)  //印出 nil
if job != nil {
    print("Your Job is " + job!)
}
if let s = job {
    print("Your Job is " + s)
}
if let job = job {
    print("Your Job is " + job)
}
var wordToLookup2 = "😱"
var meaning2 = emojiDict[wordToLookup2]
if let meaning2 = meaning2 {
    let containerView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
    containerView.backgroundColor = UIColor.orange
    let lbEmoji = UILabel(frame: CGRect(x: 95, y: 20, width: 150, height: 150))
    lbEmoji.text = wordToLookup2
    lbEmoji.font = UIFont.systemFont(ofSize: 100)
    containerView.addSubview(lbEmoji)
    
    let lbMeaning = UILabel(frame: CGRect(x: 110, y: 100, width: 150, height: 150))
    lbMeaning.text = meaning
    lbMeaning.font = UIFont.systemFont(ofSize: 30)
    lbMeaning.textColor = UIColor.white
    containerView.addSubview(lbMeaning)
}
