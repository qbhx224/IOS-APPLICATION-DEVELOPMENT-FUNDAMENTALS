//
//  ViewController.swift
//  test
//
//  Created by student on 2024/4/30.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myTableView: UITableView!
    var mainText:[String] = []
    var detailText:[String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //头部
        let redVIew = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 5))
        redVIew.backgroundColor = .red
        myTableView.tableHeaderView = redVIew
        
        //尾部
        let blueVIew = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 5))
        blueVIew.backgroundColor = .blue
        myTableView.tableFooterView = blueVIew
        
        //数据
        mainText = ["安徽","湖北","湖南","河北","河南","江苏"]
        detailText = ["芜湖","武汉","长沙","石家庄","郑州","南京"]
    }


}

extension ViewController:UITableViewDataSource{
    
    //显示节数
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //每节的行数（cell）
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    //每个cell的样式
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        1.代码
        var cell = tableView.dequeueReusableCell(withIdentifier: "abc")
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "abc")
        }
        cell?.backgroundColor = .gray  //cell背景颜色
        cell?.imageView?.image = UIImage(named: "image\(indexPath.row+1).png") //左侧图片
        cell?.textLabel?.text = mainText[indexPath.row]     //大标题
        cell?.detailTextLabel?.text = detailText[indexPath.row]    //小标题
        cell!.accessoryType = .detailButton  //cell显示方式
        let cs = CGSize(width: 35, height: 35)
        UIGraphicsBeginImageContext(cs)
        cell?.imageView?.image?.draw(in: CGRect(x: 0, y: 0, width: cs.width, height: cs.height))
        cell?.imageView!.image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        cell?.textLabel?.textColor = .green  //大标题文字颜色
        cell?.detailTextLabel?.textColor = .blue     //小标题文字颜色
        return cell!
        
//        2.storyboard
//        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "abc")
//        cell.backgroundColor = .gray  //cell背景颜色
//        cell.imageView?.image = UIImage(named: "light") //左侧图片
//        cell.textLabel?.text = "安徽商贸职业技术学院"     //大标题
//        cell.detailTextLabel?.text = "移互231"    //小标题
//        cell.accessoryType = .detailButton  //cell显示方式
//        let cs = CGSize(width: 35, height: 35)
//        UIGraphicsBeginImageContext(cs)
//        cell.imageView?.image?.draw(in: CGRect(x: 0, y: 0, width: cs.width, height: cs.height))
//        cell.imageView!.image = UIGraphicsGetImageFromCurrentImageContext()
//        UIGraphicsEndImageContext()
//        cell.textLabel?.textColor = .green  //大标题文字颜色
//        cell.detailTextLabel?.textColor = .blue     //小标题文字颜色
//        return cell
    }
    
    //每节的头部标题
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "第\(section+1)节头部"
    }
    
    //每节的尾部标题
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "第\(section+1)节尾部"
    }
}
