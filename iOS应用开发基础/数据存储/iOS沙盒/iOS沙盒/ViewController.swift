//
//  ViewController.swift
//  iOS沙盒
//
//  Created by student on 2024/6/5.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //1.bundle相关
        print(Bundle.main.bundlePath)
        
        print(Bundle.main.path(forResource: "Info", ofType: "plist")!)
        print(Bundle.main.bundlePath + "/Info.plist")
        
        //2.其他存储位置
        print(NSHomeDirectory())
        
        print(NSTemporaryDirectory())
        print(NSHomeDirectory()+"/tmp/")
        
        print(FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!)
        print(NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!)
        print(NSHomeDirectory()+"/Documents")
        
        print(FileManager.default.urls(for: .libraryDirectory, in: .userDomainMask).first!)
        print(NSSearchPathForDirectoriesInDomains(.libraryDirectory, .userDomainMask, true).first!)
        print(NSHomeDirectory()+"/Library/Caches")
        
        print(NSHomeDirectory()+"/SystemData")
        
        //写入
        let array: NSArray = ["葛优", "范伟", "岳云鹏"]
        let dir = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let dirPath = dir + "/d.plist"
        print(dirPath)
        array.write(toFile: dirPath, atomically: true)
        
        let dic: NSDictionary = ["name":"张三","age":18]
        let dir2 = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let dirPath2 = dir2 + "/dd.plist"
        print(dirPath2)
        dic.write(toFile: dirPath2, atomically: true)
        
        
        let array2: NSMutableArray = ["葛优", "范伟", "岳云鹏"]
        array2.insert("111", at: 2)
        array2.removeObject(at: 1)
        
        let tmpURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let fileURL =  tmpURL.appendingPathComponent("d3.plist")
        print(fileURL)
        array2.write(to: fileURL, atomically: true)
        
        
        let dic2: NSDictionary = ["name":"张三","age":18]
        let tmpURL2 = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let fileURL2 =  tmpURL2.appendingPathComponent("dd3.plist")
        print(fileURL2)
        dic2.write(to: fileURL2, atomically: true)
        
        
        //读取
        let path = Bundle.main.path(forResource: "PList", ofType: "plist")
        if let path = path{
            let root = NSArray(contentsOfFile: path)
            if let root = root{
                for i in root{
                    print(i)
                }
            }
        }
        
        let path2 = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first! + "/dd.plist"
        let root = NSDictionary(contentsOfFile: path2)
        for (key,value) in root! {
            print(key,value)
        }
        
        let p = Bundle.main.path(forResource: "d", ofType: "plist")
        if let p = p{
            let root = NSDictionary(contentsOfFile: p)
            if let root = root{
                print(root.allKeys)
                print(root.allValues)
                print("_____________________")
                for i in root.allKeys{
                    let x = root[i]! as? Array<Any>
                    print(x!)
                }
            }
        }
    }
}

