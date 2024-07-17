//
//  SecondVCController.swift
//  test
//
//  Created by student on 2024/5/27.
//

import UIKit

protocol SendDataProtocol {
    func sendData(data:String)
}
class SecondVCController: UIViewController {
    //2.定义一个delegate属性，遵守SendDataProtocol协议
    var delegate:SendDataProtocol?
//    //1.在目的控制器定义一个属性
//    var text:String?
    @IBOutlet weak var SecondText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
//        //3.赋值（将目的控制器的属性赋值给目的控制器文本框文本）
//        self.SecondText.text = self.text
        // Do any additional setup after loading the view.
    }
    @IBAction func BACK(_ sender: UIButton) {
        //3.传数据
        self.delegate?.sendData(data: self.SecondText.text!)
        //返回
        self.dismiss(animated: true, completion: nil)
    }
    

}
