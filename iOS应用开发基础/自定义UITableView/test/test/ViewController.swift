//
//  ViewController.swift
//  test
//
//  Created by student on 2024/5/13.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var imagesArr:Array<String>?
    var groupArr:Array<String>?
    var dateArr:Array<String>?
    var contentArr:Array<String>?
    
    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.rowHeight = 100
        imagesArr = ["image1","image2","image3","image4","image5","image6"]
        groupArr = ["篮球爱好群","张三","李四","家人群","三人组","王五"]
        dateArr = ["周六","周五","周四","周三","周二","周一"]
        contentArr = ["下午三点开始打球，大家都准备好。","周日约爬山，早上6点在校门口集合。","最近怎么样啊，晚上约着吃个饭。","今天天气好啊!都出来玩吧。","周末打球约不，我来准备场地和设备?","这次省考怎么样呢，一定要上啊。"]
        //下拉刷新
        let refresh = UIRefreshControl()
        refresh.attributedTitle = NSAttributedString(string: "下拉刷新")
        refresh.addTarget(self, action: #selector(addDate), for: .valueChanged)
        self.myTableView.refreshControl = refresh

    }
    @objc func addDate(){
        //增加数据
        self.imagesArr?.insert("image2", at: 0)
        self.groupArr?.insert("Test message", at: 0)
        self.dateArr?.insert("5.14", at: 0)
        self.contentArr?.insert("For test", at: 0)
        //2.重新加载数据
        self.myTableView.reloadData()
        //结束刷新状态
        if ((self.myTableView.refreshControl?.isRefreshing) != nil){
            self.myTableView.refreshControl?.endRefreshing()
        }
    }
    //数据源方法
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imagesArr!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "abc") as! MyTableViewCell
        cell.imageview.image = UIImage(named: imagesArr![indexPath.row])
        cell.lableone.text = groupArr![indexPath.row]
        cell.labletwo.text = dateArr![indexPath.row]
        cell.lablethree.text = contentArr![indexPath.row]
        return cell
    }
}

