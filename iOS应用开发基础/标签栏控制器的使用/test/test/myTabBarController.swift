//
//  myTabBarController.swift
//  test
//
//  Created by student on 2024/6/4.
//

import UIKit

class myTabBarController: UITabBarController,UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        
        
        // Do any additional setup after loading the view.
    }
    
    //重新实现didselect item方法
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
//        item.badgeValue = nil
//        print(item.title!)
    }
    
    //UITabBarControllerDelegate中方法
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        viewController.tabBarItem.badgeValue = nil
        print(viewController.tabBarItem.title!)
    }

}
