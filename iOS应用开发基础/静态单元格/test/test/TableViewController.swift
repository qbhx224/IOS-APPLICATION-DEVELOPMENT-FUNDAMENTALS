//
//  ViewController.swift
//  test
//
//  Created by student on 2024/5/8.
//

import UIKit

class TableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        if indexPath.section == 1{
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "a")
            present(vc, animated: true, completion: nil)
        }
    }
    
}
