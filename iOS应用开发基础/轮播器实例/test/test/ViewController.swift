//
//  ViewController.swift
//  test
//
//  Created by student on 2024/4/29.
//

import UIKit

class ViewController: UIViewController {
    var scrollView:UIScrollView?
    var pageControl:UIPageControl?
    let imageW = UIScreen.main.bounds.size.width
    let imageH = 260
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        createScrollView()
        createPageControl()
    }
    func createScrollView() {
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: Int(imageW), height: imageH))
        scrollView?.backgroundColor = .yellow
        scrollView?.contentSize = CGSize(width: Int(imageW)*5, height: imageH)
        scrollView?.showsHorizontalScrollIndicator = false
        
        for i in 0...4{
            let imageVIew = UIImageView(frame: CGRect(x: Int(imageW)*i, y: 0, width:Int(imageW), height: imageH))
            imageVIew.image = UIImage(named: "img\(i)")
            scrollView?.addSubview(imageVIew)
        }
        scrollView?.isPagingEnabled = true
        scrollView?.bounces = false
        view.addSubview(scrollView!)
    }
    func createPageControl(){
        pageControl = UIPageControl(frame: CGRect(x: 0, y: 0, width: 200, height: 20))
        pageControl?.pageIndicatorTintColor = .blue
        pageControl?.numberOfPages = 5
        pageControl?.currentPageIndicatorTintColor = .red
        pageControl?.center = CGPoint(x: imageW*0.5, y: 220)
        pageControl?.addTarget(self, action: #selector(valueChanged), for: .valueChanged)
        view.addSubview(pageControl!)
    }
    func scrollViewDidEndDecelerating(_ scrollView:UIScrollView) {
        let index = scrollView.contentOffset.x / imageW
        pageControl?.currentPage = Int(index)
    }
    @objc func valueChanged(){
        let index = pageControl?.currentPage
        scrollView?.setContentOffset(CGPoint(x: index!*Int(imageW), y: 0), animated: true)
//        scrollView?.contentOffset.x = CGFloat(index! * Int(imageW))
    }

}
