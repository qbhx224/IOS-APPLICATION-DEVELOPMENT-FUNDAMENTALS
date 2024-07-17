//
//  ViewController.swift
//  test
//
//  Created by student on 2024/4/22.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    var imgView:UIImageView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        createScrollView1()
        createScrollView2()
    }
    
    func createScrollView1(){
        //和view一样的scrollVIew
        let scrollView = UIScrollView(frame: view.frame)
        //创建两个内容视图
        let subVIew1 = UIView(frame: view.frame)
        subVIew1.backgroundColor = .blue
        scrollView.addSubview(subVIew1)
        
        let subVIew2 = UIView(frame: CGRect(x: view.frame.size.width, y: 0, width: view.frame.size.width, height: view.frame.size.height))
        subVIew2.backgroundColor = .green
        scrollView.addSubview(subVIew2)
        //滚动区域
        scrollView.contentSize = CGSize(width: view.frame.size.width*2, height: 0)
        //滚动条
        scrollView.showsVerticalScrollIndicator = false
        scrollView.showsHorizontalScrollIndicator = false
        //回弹效果
        scrollView.bounces = false
        
        view.addSubview(scrollView)
    }
    
    //滚动就调用
    func scrollViewDidScroll(_ scrollView:UIScrollView) {
        //偏移
        print(scrollView.contentOffset)
    }
    func createScrollView2() {
        let scrollView = UIScrollView(frame: view.frame)
        //创建子视图
        imgView = UIImageView(image: UIImage(named: "sun.jpg"))
        imgView?.frame = view.frame
        scrollView.addSubview(imgView!)
        scrollView.contentSize = CGSize(width: view.frame.size.width*2, height: view.frame.size.height*2)
        //缩放
        scrollView.minimumZoomScale = 0.5
        scrollView.maximumZoomScale = 2
        scrollView.delegate = self
        view.addSubview(scrollView)
    }
    
    //缩放
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imgView
    }
}

