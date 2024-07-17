//
//  txlTableViewController.swift
//  test
//
//  Created by student on 2024/6/5.
//

import UIKit

class txlTableViewController: UITableViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    
    var biaoti:[String] = ["🔍","A","B","W"]
    var neirong:[[String]] = [["新的朋友","群聊","标签"],["A张三","A李四","A王五"],["B11","B22","B33"],["WeChat Team"]]
    var imageArr:[[String]] = [["image1","image2","image3"],["image4","image5","image6"],["image1","image3","image5"],["image2"]]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configsearchBar()
        
        self.tableView.rowHeight = 60
    }

    fileprivate func configsearchBar() {
        searchBar.tintColor = UIColor(red: 22/255, green: 161/255, blue: 1/255, alpha: 1)
        searchBar.searchBarStyle = .default
        searchBar.setBackgroundImage(UIImage(), for: .any, barMetrics: .default)
        
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.biaoti.count
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.neirong[section].count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "txl")
        cell?.imageView?.image = UIImage(named: self.imageArr[indexPath.section][indexPath.row])
        cell?.textLabel?.text = self.neirong[indexPath.section][indexPath.row]
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if(section == 0){
            return ""
        }else{
            return self.biaoti[section]
        }
    }
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return self.biaoti
    }
}
