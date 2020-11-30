import UIKit

var emojiDict:[String:String] = ["👻":"鬼","💩":"poop","😡":"生氣","😱":"Scream","👹":"怪物"]
var wordToLookup = "😱"
var meaning = emojiDict[wordToLookup]
//if let meaning = meaning {
    let containerView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
    containerView.backgroundColor = UIColor.orange
    let lbEmoji = UILabel(frame: CGRect(x: 95, y: 20, width: 150, height: 150))
    lbEmoji.text = wordToLookup
    lbEmoji.font = UIFont.systemFont(ofSize: 100)
    containerView.addSubview(lbEmoji)
    
    let lbMeaning = UILabel(frame: CGRect(x: 110, y: 100, width: 150, height: 150))
    lbMeaning.text = meaning
    lbMeaning.font = UIFont.systemFont(ofSize: 30)
    lbMeaning.textColor = UIColor.white
    containerView.addSubview(lbMeaning)
//}


