//
//  ViewController.swift
//  test
//
//  Created by student on 2024/6/11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //一、Bundle(资源包)
        //1.app文件
        //url
        print(Bundle.main.bundleURL)
        //string
        print(Bundle.main.bundlePath)
        //获取其他资源(使用)
        print(Bundle.main.path(forResource: "Info", ofType: "plist")!)
        
     //-----------------------------------------------------------------//
        
        //数据存储位置（用户使用）
        //1.Document
        print(NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!)
        //主目录+拼接文件夹
        print(NSHomeDirectory()+"/Document")
        
        //2.Library
        print(NSSearchPathForDirectoriesInDomains(.libraryDirectory, .userDomainMask, true).first!)
        //主目录+拼接文件夹
        print(NSHomeDirectory()+"/Library")
        
        //3.SystemData
        //主目录+拼接文件夹
        print(NSHomeDirectory()+"/SystemData")
        
        //4.temp
        print(NSHomeDirectory())
        //主目录+拼接文件夹
        print(NSHomeDirectory()+"/tmp")
        
    //-----------------------------------------------------------------//
        
        //定义一个数组，包含需要持久存储的数据
//        let array
        
        
        
    //-----------------------------------------------------------------//
        //读plist
        let path1 = Bundle.main.path(forResource: "abc", ofType: "plist")
        if let path1 = path1{
            let root = NSArray(contentsOfFile: path1)
            if let root = root{
                for i in root{
                    print(i)
                }
            }
        }
        
        let path2 = Bundle.main.path(forResource: "def", ofType: "plist")
        if let path2 = path2{
            let root = NSDictionary(contentsOfFile: path2)
            if let root = root{
                for (k,v) in root{
                    print(k,v)
                }
            }
        }
        
    }


}

