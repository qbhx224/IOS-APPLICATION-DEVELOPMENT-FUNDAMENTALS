//
//  ViewController.swift
//  test
//
//  Created by student on 2024/6/3.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var imgArr:Array<String>?
    var nameArr:Array<String>?
    var contentArr:Array<String>?
    var timeArr:Array<String>?
    
    
    @IBOutlet weak var tabv: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tabv.rowHeight = 95
        imgArr = ["image1","image2","image3","image4","image5","image6"]
        nameArr = ["陈一","胡二","张三","李四","王五","六子"]
        timeArr = ["11:11","12:12","13:13","14:14","15:15","16:16"]
        contentArr = ["谁住在深海的大菠萝里","海绵宝宝","疯疯狂狂，伸缩自如","海绵宝宝","如果四处探险是你的愿望","海绵宝宝"]
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imgArr!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "wechat") as! myTableViewCell
        cell.img.image = UIImage(named: imgArr![indexPath.row])
        cell.name.text = nameArr![indexPath.row]
        cell.time.text = timeArr![indexPath.row]
        cell.content.text = contentArr![indexPath.row]
        return cell
    }

}

