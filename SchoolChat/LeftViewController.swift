//
//  LeftViewController.swift
//  SchoolChat
//
//  Created by Qentinel'Q on 2017/3/3.
//  Copyright © 2017年 Qentinel. All rights reserved.
//

import UIKit

class LeftViewController: UIViewController {
    @IBOutlet weak var avatorImageView: UIImageView! {
        didSet {
            avatorImageView.layer.cornerRadius = 40
            avatorImageView.layer.masksToBounds = true
        }
    }
    
    @IBAction func popSearchVC(_ sender: UIButton) {
        closeLeftAndPopVC(viewController: SearchViewController())
    }
    @IBAction func popGameVC(_ sender: UIButton) {
        closeLeftAndPopVC(viewController: GameViewController())
    }
    @IBAction func popSettingVC(_ sender: UIButton) {
        closeLeftAndPopVC(viewController: SettingViewController())
    }
    @IBAction func logoff(_ sender: UIButton) {
        closeLeftAndPopVC(viewController: ActiveOrLoginViewController())
    }
    
    func closeLeftAndPopVC(viewController: UIViewController) {
        appDelegate.mainVC?.closeLeft()
        let navVC = appDelegate.mainVC?.mainViewController as! UINavigationController
        navVC.pushViewController(viewController, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    

}
