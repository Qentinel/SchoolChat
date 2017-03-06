//
//  ContactTabViewController.swift
//  SchoolChat
//
//  Created by Qentinel'Q on 2017/3/3.
//  Copyright © 2017年 Qentinel. All rights reserved.
//

import UIKit

class ContactTabViewController: UITabBarController {
    var buddyListViewController: BuddyListViewController?
    var groupListViewController: GroupListViewController?
    var contactChooseView: ChooseView!


    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBarController()
        // Do any additional setup after loading the view.
    }

    // 设置tabBarVC的子vc，隐藏tabbar，并加上选择bar
    func setTabBarController() {
        buddyListViewController = BuddyListViewController()
        groupListViewController = GroupListViewController()
        self.viewControllers = [buddyListViewController!, groupListViewController!]
        self.tabBar.isHidden = true
        
        contactChooseView = Bundle.main.loadNibNamed("ChooseView", owner: nil, options: nil)?[0] as! ChooseView
        contactChooseView.ButtonWithNumber(startTag: 100, number: 2)
        contactChooseView?.frame = CGRect(x: 0, y: 64.3, width: 375, height: 30)
        self.view.addSubview(contactChooseView!)
        self.view.bringSubview(toFront: contactChooseView!)
    }
    
    func jumpToChildPage(index: Int) {
        let navVC = appDelegate.mainVC?.mainViewController as! UINavigationController
        let tabVC = navVC.viewControllers[0] as! MainTabViewController
        let contactVC = tabVC.viewControllers?[0] as! ContactTabViewController
        contactVC.selectedIndex = index
    }
    

}
