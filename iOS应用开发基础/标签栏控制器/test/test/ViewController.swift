//
//  ViewController.swift
//  test
//
//  Created by student on 2024/6/3.
//

import UIKit

class ViewController: UIViewController,UITabBarDelegate {

    @IBOutlet weak var MyTabBar: UITabBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //第一个item被选中
//        self.MyTabBar.selectedItem = self.MyTabBar.items?.first
        self.MyTabBar.selectedItem = self.MyTabBar.items?[1]
        
        //最后一个item设置角标
        self.MyTabBar.items?.last?.badgeValue = "5"
        
        //代理(连线or代码）
        MyTabBar.delegate = self
        
    }
    //代理方法，选中时调用
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        //获取title
        print(item.title!)
        //选中后取消上角标
        item.badgeValue = nil
    }
}

