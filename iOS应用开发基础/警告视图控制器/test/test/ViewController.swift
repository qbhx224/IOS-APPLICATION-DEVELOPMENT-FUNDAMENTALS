//
//  ViewController.swift
//  test
//
//  Created by student on 2024/5/28.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func alert(_ sender: Any) {
        //获取警告控制器
        let alert = UIAlertController(title: "温馨提示", message: "天气炎热，注意防晒", preferredStyle: .alert)
        //警告框按钮
        let ok = UIAlertAction(title: "确定✅", style: .default) { (_) in
            print("按钮被点击")
        }
        let cancel = UIAlertAction(title: "取消❎", style: .cancel, handler: nil)
        //将按钮添加到警告框
        alert.addAction(ok)
        alert.addAction(cancel)
        //文本框添加到警告框
        alert.addTextField { (textField) in
            textField.placeholder = "For Test"
        }
        //显示控制器alert
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func sheet(_ sender: Any) {
        //获取警告控制器
        let sheet = UIAlertController(title: "温馨提示", message: "天气炎热，注意防晒", preferredStyle: .actionSheet)
        //警告框按钮
        let ok = UIAlertAction(title: "确定✅", style: .default) { (_) in
            print("按钮被点击")
        }
        let cancel = UIAlertAction(title: "取消🥵🥵🥵", style: .cancel, handler: nil)
        let abandon = UIAlertAction(title: "放弃❎", style: .destructive, handler: nil)
        //将按钮添加到警告框
        sheet.addAction(ok)
        sheet.addAction(cancel)
        sheet.addAction(abandon)
        //显示控制器sheet
        self.present(sheet, animated: true, completion: nil)
    }
    
}

