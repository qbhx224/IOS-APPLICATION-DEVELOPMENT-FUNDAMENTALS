//
//  ViewController.swift
//  test
//
//  Created by student on 2024/5/27.
//

import UIKit
//1.实现协议
class ViewController: UIViewController, SendDataProtocol {
    func sendData(data:String){
        self.FirstText.text = data
    }
    @IBOutlet weak var FirstText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func GOTO(_ sender: UIButton) {
        //目的控制器
        let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "second") as! SecondVCController
        //设置全屏
        secondVC.modalPresentationStyle = .fullScreen
//        //2.赋值（将第一个控制器文本框文本赋值给目的控制器的属性）
//        secondVC.text = self.FirstText.text
        //设置代理
        secondVC.delegate = self
        //跳转
        self.present(secondVC, animated: true, completion: nil)
    }
}

