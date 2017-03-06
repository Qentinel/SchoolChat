//
//  HeadView.swift
//  SchoolChat
//
//  Created by Qentinel'Q on 2017/3/3.
//  Copyright © 2017年 Qentinel. All rights reserved.
//

import UIKit

class HeadView: UIView {

    @IBOutlet weak var personalButton: UIButton!
    @IBOutlet weak var contactButton: UIButton!
    @IBOutlet weak var trendButton: UIButton!
    var buttonIndex = 0
    
    lazy var halvingLine: UIView = {
        let line = UIView(frame: CGRect(x: 0, y: 64, width: 375, height: 0.3))
        line.backgroundColor = UIColor.lightGray
        return line
    }()
    
    lazy var mainController: MainTabViewController = {
        let vc = MainTabViewController()
        return vc
    }()
    
    @IBAction func popPerson(_ sender: UIButton) {
        self.buttonIndex = 0
        mainController.changeViewController(index: buttonIndex)
    }
    
    @IBAction func popContact(_ sender: UIButton) {
        changeIconAlpha(c: 1, t: 0.3)
        self.buttonIndex = 1
        mainController.changeViewController(index: buttonIndex)
    }
    
    @IBAction func popTrend(_ sender: UIButton) {
        changeIconAlpha(c: 0.3, t: 1)
        self.buttonIndex = 2
        mainController.changeViewController(index: buttonIndex)
    }
    
    override func awakeFromNib() {
        setView()
        self.addSubview(halvingLine)
    }
    
    func setView() {
        self.backgroundColor = greenColor
        setButton(name: "profile", button: self.personalButton)
        setButton(name: "contact", button: self.contactButton)
        setButton(name: "trend", button: self.trendButton)
        
    }
    
    func setButton(name: String, button:UIButton) {
        button.backgroundColor = UIColor.clear
        button.setImage(UIImage(named: name), for: .normal)
        button.alpha = 0.3
        button.imageView?.backgroundColor = greenColor
        if button == contactButton || button == personalButton {
            button.alpha = 1
        }
    }
    
    func changeIconAlpha(c: CGFloat, t: CGFloat) {
        contactButton.alpha = c
        trendButton.alpha = t
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
