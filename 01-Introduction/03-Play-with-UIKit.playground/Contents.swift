//: Playground - noun: a place where people can play

import UIKit
import XCPlayground


let view = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 480))
view.backgroundColor = UIColor.orangeColor()

let button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
button.center = view.center

button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
button.setTitle("Click Me :)", forState: .Normal)

view.addSubview(button)

XCPlaygroundPage.currentPage.liveView = view


