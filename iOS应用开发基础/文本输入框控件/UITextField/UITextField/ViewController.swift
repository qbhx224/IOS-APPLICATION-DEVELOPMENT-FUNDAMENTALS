//
//  ViewController.swift
//  UITextField
//
//  Created by student on 2024/3/27.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.createTextField()
    }

    func createTextField() {
        let tf = UITextField(frame: CGRect(x: 137, y: 250, width: 140, height: 34))
        tf.borderStyle = .roundedRect
        tf.placeholder = "这是一个测试框"
        tf.textColor = .blue
        tf.textAlignment = .center
        tf.clearButtonMode = .whileEditing
        tf.delegate = self
        self.view.addSubview(tf)
    }
        //触摸屏幕触发
    override func touchesBegan(_ touches:Set<UITouch>,with event:UIEvent?) {
        //结束编辑
        self.view.endEditing(true)
        }
}

extension ViewController:UITextFieldDelegate {
    //监控所有输入的字符（结束输入时）
    func textFieldDidBeginEditing(_ textField:UITextField) {
            if let text = textField.text {
                print(text)
            }
        }
    
    //监控每一个输入的字符
    internal func textField (_ textField:UITextField,shouldChangeCharactersIn range:NSRange, replacementString string:String) -> Bool {
        print(string)
        return true
    }
}
//command + B 编译
//command + R 运行
