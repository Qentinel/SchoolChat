//
//  TrendTabViewController.swift
//  SchoolChat
//
//  Created by Qentinel'Q on 2017/3/3.
//  Copyright © 2017年 Qentinel. All rights reserved.
//

import UIKit

class TrendTabViewController: UITabBarController {
    var schoolViewController: SchoolTrendViewController!
    var interestViewController: InterestTrendViewController!
    var classViewController: ClassTrendViewController!
    var trendChooseView: ChooseView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBarController()
        // Do any additional setup after loading the view.
    }
    
    func setTabBarController() {
        schoolViewController = SchoolTrendViewController()
        interestViewController = InterestTrendViewController()
        classViewController = ClassTrendViewController()
        self.viewControllers = [schoolViewController!, interestViewController!, classViewController!]
        self.tabBar.isHidden = true
        
        trendChooseView = Bundle.main.loadNibNamed("ChooseView", owner: nil, options: nil)?[0] as! ChooseView
        trendChooseView?.frame = CGRect(x: 0, y: 64.3, width: 375, height: 30)
        trendChooseView.ButtonWithNumber(startTag: 102, number: 3)
        self.view.addSubview(trendChooseView)
        self.view.bringSubview(toFront: trendChooseView)
    }

    func jumpToChildPage(index: Int) {
        let navVC = appDelegate.mainVC?.mainViewController as! UINavigationController
        let tabVC = navVC.viewControllers[0] as! MainTabViewController
        let contactVC = tabVC.viewControllers?[1] as! TrendTabViewController
        contactVC.selectedIndex = index
    }

}
