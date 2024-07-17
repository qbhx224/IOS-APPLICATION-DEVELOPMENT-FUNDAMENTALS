//
//  ViewController.swift
//  test
//
//  Created by student on 2024/4/17.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tf: UITextField!
    var datePicker:UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        createDatePicker()
    }
    func createDatePicker(){
        datePicker = UIDatePicker()
        datePicker?.preferredDatePickerStyle = .wheels
        datePicker?.datePickerMode = .date
        datePicker?.locale = Locale(identifier: "zh_CN")
        datePicker?.minuteInterval = 10
        datePicker?.addTarget(self, action: #selector(selectDate), for: .valueChanged)
        tf.inputView = datePicker
    }
    @objc func selectDate(){
        let date = datePicker?.date
        //日期转为字符串
        let dateFomatter = DateFormatter()
        //定制日期格式
        dateFomatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let str = dateFomatter.string(from: date!)
        tf.text = str
    }

}

