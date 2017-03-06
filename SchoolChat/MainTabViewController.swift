//
//  MainTabViewController.swift
//  SchoolChat
//
//  Created by Qentinel'Q on 2017/3/3.
//  Copyright © 2017年 Qentinel. All rights reserved.
//

import UIKit

class MainTabViewController: UITabBarController {
    var headView: HeadView?
    var contactViewController: ContactTabViewController?
    var trendViewController: TrendTabViewController?

    override func viewDidLoad() {
        super.viewDidLoad()
        setHeadView()
        setTabBarControllers()
        // Do any additional setup after loading the view.
    }
    
    // 设置并安装headView
    func setHeadView() {
        headView = Bundle.main.loadNibNamed("HeadView", owner: nil, options: nil)?[0] as? HeadView
        headView?.frame = CGRect(x: 0.0, y: 0.0, width: 375.0, height: 64.5)
        self.view.addSubview(headView!)
        self.view.bringSubview(toFront: headView!)
    }
    
    // 设置tabBar属性: 隐藏原有tabbar，添加子vc
    func setTabBarControllers() {
        self.tabBar.isHidden = true
        contactViewController = ContactTabViewController()
        trendViewController = TrendTabViewController()
        self.viewControllers = [contactViewController!, trendViewController!]
    }
    
    // 代理函数：跳到当前选择的vc
    func changeViewController(index: Int) {
        switch index {
        case 0:
            appDelegate.mainVC?.openLeft()
        default:
            let delegate = UIApplication.shared.delegate as! AppDelegate
            let mainNavVC = delegate.mainVC?.mainViewController as! UINavigationController
            let mainTabVC = mainNavVC.viewControllers[0] as! MainTabViewController
            mainTabVC.selectedIndex = index - 1
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
