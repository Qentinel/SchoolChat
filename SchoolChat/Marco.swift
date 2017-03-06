//
//  Marco.swift
//  SchoolChat
//
//  Created by Qentinel'Q on 2017/3/6.
//  Copyright © 2017年 Qentinel. All rights reserved.
//

import Foundation
import UIKit

// app主要的颜色：校徽绿、黑色、白色、亮灰色、透明
let greenColor = UIColor(colorLiteralRed: 48.0/255.0, green: 99.0/255.0, blue: 79.0/255.0, alpha: 1)
let blackColor = UIColor.black
let whiteColor = UIColor.white
let grayColor = UIColor(colorLiteralRed: 171.0/255.0, green: 171.0/255.0, blue: 171.0/255.0, alpha: 0.8)
let clearColor = UIColor.clear


// appDelegate
let appDelegate = UIApplication.shared.delegate as!  AppDelegate

// app顶上选择的按钮块：改变按钮和其他按钮的状态，以及跳转其他子页面
func ChoosebuttonStatus(buttons: [UIButton], titleColor: UIColor, backgroundColor: UIColor)  {
    for bt in buttons {
        bt.backgroundColor = backgroundColor
        bt.setTitleColor(titleColor, for: .normal)
    }
}

// 左侧功能vc添加导航条
func addNavigationBar(viewController: UIViewController, title: String) {
    viewController.view.backgroundColor = whiteColor
    let navBar = Bundle.main.loadNibNamed("NavBarView", owner: nil, options: nil)?[0] as! NavBarView
    navBar.frame = CGRect(x: 0, y: 0, width: 375, height: 64)
    navBar.titleLabel.text = title
    viewController.view.addSubview(navBar)
}
