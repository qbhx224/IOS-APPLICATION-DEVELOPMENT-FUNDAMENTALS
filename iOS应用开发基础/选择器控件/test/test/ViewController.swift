//
//  ViewController.swift
//  test
//
//  Created by student on 2024/4/15.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
//一维数组
//    var province = ["安徽省","江苏省","浙江省","上海市"]
//    var city = ["芜湖市","南京市","杭州市","黄浦区"]
//二维数组
    var provinceAndCity = [["安徽省","江苏省","浙江省","上海市"],["芜湖市","南京市","杭州市","黄浦区"]]
    
//定义两个空数组，存储选择的城市
    var arr1:[String] = []
    var arr2:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
///数据源
extension ViewController:UIPickerViewDataSource {
    ///设置选择器控件的分组（列）
    func numberOfComponents(in pickerView:UIPickerView) -> Int {
//        return 2
        return self.provinceAndCity.count
    }
    ///每组（列）有多少行
    func pickerView(_ pickerView:UIPickerView,numberOfRowsInComponent component:Int) -> Int {
//        return 10
//        return self.province.count
        if component == 0 {
            return self.provinceAndCity[component].count
        }else{
            return self.provinceAndCity[component].count
        }
    }
}

///代理
extension ViewController:UIPickerViewDelegate {
    ///设置每行的标题
    func pickerView(_ pickerView:UIPickerView,titleForRow row:Int,forComponent component:Int) -> String? {
//        return "第\(component+1)组第\(row+1)行"
//        if component == 0 {
//            return self.province[row]
//        }else{
//            return self.city[row]
//        }
        if component == 0{
            return self.provinceAndCity[component][row]
        }else{
            return self.provinceAndCity[component][row]
        }
    }
    ///设置每组的宽度
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return 200
    }
    ///设置每组的行高
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 50
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        --------------------------
//        if component == 0{
//            self.label.text = self.province[row]
//        }else{
//            self.label.text = self.city[row]
//        }
//        --------------------------
//        if component == 0{
//            self.label.text = self.self.provinceAndCity[component][row]
//        }else{
//            self.label.text = self.self.provinceAndCity[component][row]
//        }
//        --------------------------
        if component == 0 {
            arr1.append(self.self.provinceAndCity[component][row])
            if let last1 = arr1.last,let last2 = arr2.last{
                self.label.text = last1 + last2
            }
        }else{
            arr2.append(self.self.provinceAndCity[component][row])
            if let last1 = arr1.last,let last2 = arr2.last{
                self.label.text = last1 + last2
            }
        }
    }
}
