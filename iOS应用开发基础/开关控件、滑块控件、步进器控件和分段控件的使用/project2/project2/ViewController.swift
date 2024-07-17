//
//  ViewController.swift
//  project2
//
//  Created by student on 2024/4/9.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lamp: UIImageView!
    @IBOutlet weak var voice: UIImageView!
    @IBOutlet weak var product: UILabel!
    @IBOutlet weak var flower: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func swiClick(_ sender: UISwitch) {
        if sender.isOn{
            self.lamp.image = UIImage(named: "light")
        }else{
            self.lamp.image = UIImage(named: "dark")
        }
        
    }
    
    @IBAction func sliderClick(_ sender: UISlider) {
        let value = sender.value
        print(value)
        if value < 0.3{
            self.voice.image = UIImage(named: "small")
        }else if value < 0.7{
            self.voice.image = UIImage(named: "middle")
        }else{
            self.voice.image = UIImage(named: "high")
        }
        
    }
    
    @IBAction func stepperClick(_ sender: UIStepper) {
        let value = Int(sender.value)
        if value <= Int(sender.maximumValue){
            self.product.text = "您购买了\(value)件商品"
        }
        if value == Int(sender.minimumValue){
            self.product.text = "您未购买商品"
        }
        
    }
    
    @IBAction func segmentClick(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            self.flower.image = UIImage(named: "yellow")
        }else if sender.selectedSegmentIndex == 1{
            self.flower.image = UIImage(named: "white")
        }else{
            self.flower.image = UIImage(named: "purple")
        }
        
    }
}

