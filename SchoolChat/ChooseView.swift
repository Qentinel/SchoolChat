//
//  ChooseView.swift
//  SchoolChat
//
//  Created by Qentinel'Q on 2017/3/6.
//  Copyright © 2017年 Qentinel. All rights reserved.
//

import UIKit

class ChooseView: UIView {
    var buttons: [UIButton]!
    let buttonsName = ["好友", "群组", "校园", "兴趣", "动态"]
    lazy var delegateVCs: [UITabBarController] = {
        let vc = appDelegate.mainVC?.mainViewController as! UINavigationController
        let tabvc = vc.viewControllers[0] as! MainTabViewController
        return tabvc.viewControllers as! [UITabBarController]
    }()
    
    func ButtonWithNumber(startTag:Int, number: Int) {
        buttons = [UIButton]()
        for index in 0..<number {
            let button = UIButton()
            button.tag = startTag + index
            button.frame = CGRect(x: (0.0 + 375.0/Double(number)*Double(index)), y: 0.0, width: 375.0/Double(number), height: 30)
            button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
            var name = ""
            if startTag < 101 {
                name = buttonsName[index]
            }
            else {
                name = buttonsName[2 + index]
            }
            button.setTitle(name, for: .normal)
            button.addTarget(self, action: #selector(buttonAction(button:)), for: .touchUpInside)
            if index == 0 {
                ChoosebuttonStatus(buttons: [button], titleColor: whiteColor, backgroundColor: greenColor)
            }
            else {
                ChoosebuttonStatus(buttons: [button], titleColor: blackColor, backgroundColor: whiteColor)
            }
            buttons.append(button)
            self.addSubview(button)
        }
    }
    
    func buttonAction(button: UIButton) {
        ChoosebuttonStatus(buttons: buttons, titleColor: blackColor, backgroundColor: whiteColor)
        ChoosebuttonStatus(buttons: [button], titleColor: whiteColor, backgroundColor: greenColor)
        switch button.tag < 102 {
        case  true:
            let index = button.tag - 100
            let cVC = delegateVCs[0] as! ContactTabViewController
            cVC.jumpToChildPage(index: index)
        default:
            let index = button.tag - 102
            let cVC = delegateVCs[1] as! TrendTabViewController
            cVC.jumpToChildPage(index: index)
        }
    }
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
