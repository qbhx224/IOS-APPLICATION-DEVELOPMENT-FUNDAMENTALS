//
//  ViewController.swift
//  test
//
//  Created by student on 2024/4/10.
//

import UIKit

class ViewController: UIViewController {
    //相当于@IBOutlet
    var btn:UIButton?
    var swi:UISwitch?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.btn = UIButton(type: .system)
        btn?.frame = CGRect(x: 100, y: 100, width: 50, height: 38)
        btn?.setTitle("登录", for: .normal)
        //相当于@IBAction
        btn?.addTarget(self,action: #selector(btnClick),for: .touchUpInside)
        self.view.addSubview(btn!)
        
        self.swi = UISwitch(frame: CGRect(x: 100, y: 200, width: 47, height: 31))
        swi?.isOn = true
        //相当于@IBAction
        swi?.addTarget(self, action: #selector(swiClick), for: .valueChanged)
        self.view.addSubview(swi!)
    }

    @objc func btnClick() {
        print("按钮被点击")
    }

    @objc func swiClick() {
        print("开关被操作")
    }
}

