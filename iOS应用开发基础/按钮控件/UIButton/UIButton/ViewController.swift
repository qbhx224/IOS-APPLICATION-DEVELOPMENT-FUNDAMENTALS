//
//  ViewController.swift
//  UIButton
//
//  Created by student on 2024/4/1.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btn1: UIButton!
    //按住ctrl，从viewcontroller链接到这
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.btn1.setTitle("Test1", for: .normal)
        self.btn1.setTitleColor(.green, for: .normal)
        self.btn1.setTitle("Test2", for: .highlighted)
        self.btn1.setTitleColor(.black, for: .highlighted)
        self.btn1.layer.cornerRadius = 17
        self.btn1.titleLabel?.font = UIFont.systemFont(ofSize: 25,weight: .bold)
        
        self.createButton()
    }
    func createButton(){
        let btn2 = UIButton(type: .system)
        btn2.frame = CGRect(x: 250, y: 200, width: 140, height: 34)
        btn2.backgroundColor = .black
        btn2.setTitle("sign in", for: .normal)
        btn2.setTitleColor(.green, for: .normal)
        btn2.setTitle("log in", for: .highlighted)
        btn2.setTitleColor(.red, for: .highlighted)
        btn2.layer.cornerRadius = 17
        btn2.titleLabel?.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        self.view.addSubview(btn2)
    }
    @IBAction func btn(_ sender: Any) {
        print("按钮被点击")
    }
    

}

