//
//  NavBarView.swift
//  SchoolChat
//
//  Created by Qentinel'Q on 2017/3/6.
//  Copyright © 2017年 Qentinel. All rights reserved.
//

import UIKit

class NavBarView: UIView {
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak private var backButton: UIButton! {
        didSet {
            backButton.setImage(UIImage(named: "back"), for: .normal)
            backButton.backgroundColor = clearColor
            backButton.imageView?.backgroundColor = greenColor
            backButton.addTarget(self, action: #selector(backToMain(button:)), for: .touchUpInside)
        }
    }
    
    override func awakeFromNib() {
        self.backgroundColor = greenColor
    }
    
    func backToMain(button: UIButton) {
        let vc = appDelegate.mainVC?.mainViewController as! UINavigationController
        vc.popViewController(animated: false)
    }

}
