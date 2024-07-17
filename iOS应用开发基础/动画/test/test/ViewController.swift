//
//  ViewController.swift
//  test
//
//  Created by student on 2024/6/28.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var customview: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    //普通动画
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        UIView.animate(withDuration: 3.0) {
//            self.customview.center = self.view.center
//            self.customview.backgroundColor = .gray
//            self.customview.layer.cornerRadius = 50
//            self.customview.alpha = 0.5
//        } completion: { _ in
//            UIView.animate(withDuration: 3.0){
//                self.customview.backgroundColor = .green
//                self.customview.layer.cornerRadius = 30
//                self.customview.alpha = 1.0
//            }
//        }
//    }
    
    //弹簧动画
    UIView.animate(withDuration: 3.0, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 10, options: .curveEaseIn){     //动画时长，延迟，弹性系数，初始速度，运动
    self.customview.center = self.view.center
    }
}

}
