//
//  ViewController.swift
//  UIImageView
//
//  Created by student on 2024/4/3.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.createImageView()
    }
    func createImageView() {
        let imgView = UIImageView(frame: CGRect(x:110,y:300,width:200,height:200))
        imgView.layer.masksToBounds = true
        imgView.layer.cornerRadius = 100
        let img = UIImage(named: "icon1.jpeg")
        imgView.image = img
        self.view.addSubview(imgView)
    }

}

