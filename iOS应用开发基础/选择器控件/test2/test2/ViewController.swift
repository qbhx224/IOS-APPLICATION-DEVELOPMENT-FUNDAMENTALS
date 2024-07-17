//
//  ViewController.swift
//  test2
//
//  Created by student on 2024/4/16.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate{
    @IBOutlet weak var tf: UITextField!
    var pickerView:UIPickerView?
    let provinces = ["北京市", "上海市", "广东省", "江苏省", "安徽省"]
    let cities = [["海淀区","朝阳区"], ["徐汇区","黄埔区","浦东新区"], ["广州市","深圳市","珠海市","东莞市"], ["南京市", "苏州市", "徐州市", "扬州市", "常州市"],["合肥市", "芜湖市", "安庆市", "阜阳市", "六安市","滁州"]]
    var selectedProvinceIndex = 0
    var arr1:[String] = []
    var arr2:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerView = UIPickerView(frame: CGRect(x: 0, y: 51, width: 428, height: 300))
        self.pickerView!.delegate = self
        self.pickerView!.dataSource = self
        self.tf.inputView = self.pickerView
        
    }
//1.数据源方法
//返回数组
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }

    
//返回省份和对应城市的数量
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return self.provinces.count
        }else{
            return cities[selectedProvinceIndex].count
        }
    }
    
//2.代理方法
//返回每一组（列）的标题
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return self.provinces[row]
        }else{
            return cities[selectedProvinceIndex][row]
        }
    }
    
//选择某一行时触发
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
        //更改selectedProvinceIndex
        self.selectedProvinceIndex = row
        //更改第二组
        self.pickerView!.reloadComponent(1)
        self.arr1.append(self.provinces[row])
        self.tf.text = self.arr1.last
        }else{
            self.arr2.append(self.cities[selectedProvinceIndex][row])
            self.tf.text = self.arr1.last! + self.arr2.last!
        }
    }
}

