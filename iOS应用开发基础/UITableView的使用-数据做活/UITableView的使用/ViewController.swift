//
//  ViewController.swift
//  UITableView的使用
//
//  Created by student on 2024/4/30.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myTableView: UITableView!
    var mainText:[String] = []
    var detailText:[String] = []
    var myImage:[String] = []
    
    @IBAction func edit(_ sender: Any) {
        myTableView.setEditing(true, animated: true)
    }
    
    @IBAction func done(_ sender: Any) {
        myTableView.setEditing(false, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableHeaderViewAndTableFooterView()
        //数据
        mainText = ["安徽","湖北","湖南","河北","河南","江苏"]
        detailText = ["芜湖","武汉","长沙","邯郸","商丘","南京"]
        myImage = ["image1.png","image2.png","image3.png","image4.png","image5.png","image6.png"]
    }
    func tableHeaderViewAndTableFooterView(){
        //头部
        let redView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 5))
        redView.backgroundColor = .red
        myTableView.tableHeaderView = redView
        //底部
        let blueView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 5))
        blueView.backgroundColor = .blue
        myTableView.tableFooterView = blueView
    }
}
//数据源
extension ViewController:UITableViewDataSource{
    //显示节数
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    //每节的行数（cell）
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mainText.count
    }
    //每个cell的样式
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //1.代码
        var cell = tableView.dequeueReusableCell(withIdentifier: "abc")
        if cell == nil{
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "abc")
        }
        cell?.imageView?.image = UIImage(named: myImage[indexPath.row])
        cell?.textLabel?.text = mainText[indexPath.row]
        cell?.detailTextLabel?.text = detailText[indexPath.row]
        cell?.accessoryType = .disclosureIndicator
        let cs = CGSize(width: 35, height: 35)
        UIGraphicsBeginImageContext(cs)
        cell?.imageView?.image?.draw(in: CGRect(x: 0, y: 0, width: cs.width, height: cs.height))
        cell?.imageView!.image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return cell!
    }
    //每节的头部标题
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "第\(section+1)节头部"
    }
    //每节的尾部标题
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "第\(section+1)节尾部"
    }
    //允许编辑【可选】
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    //1.提交编辑
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            //1.删数组的数据
            mainText.remove(at: indexPath.row)
            detailText.remove(at: indexPath.row)
            myImage.remove(at: indexPath.row)
            //2.删除表中数据
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }else if editingStyle == .insert{
            //1.增加数组的数据
            mainText.insert("北京", at: indexPath.row)
            detailText.insert("海淀", at: indexPath.row)
            myImage.insert("image1.png", at: indexPath.row)
            //2.增加表中数据
            tableView.insertRows(at: [indexPath], with: .automatic)
        }else{}
    }
//2.移动表格
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        //移动数组的数据
        let text1 = mainText[sourceIndexPath.row]
        mainText.remove(at: sourceIndexPath.row)
        mainText.insert(text1, at: destinationIndexPath.row)
        
        let text2 = detailText[sourceIndexPath.row]
        detailText.remove(at: sourceIndexPath.row)
        detailText.insert(text2, at: destinationIndexPath.row)
        
        let img = myImage[sourceIndexPath.row]
        myImage.remove(at: sourceIndexPath.row)
        myImage.insert(img, at: destinationIndexPath.row)
    }
}


//代理
extension ViewController:UITableViewDelegate{
    //更改默认编辑样式
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .insert
    }
    //2.删除按钮的文字
    func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        return "删除"
    }
    //行高
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    //节头部高度
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    //节尾部高度
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        30
    }
    //选中的行
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(mainText[indexPath.row],detailText[indexPath.row])
    }
    
}
