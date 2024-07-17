//
//  ViewController.swift
//  test
//
//  Created by student on 2024/4/10.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var Indicator: UIActivityIndicatorView!
    @IBOutlet weak var Progress: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let webview = WKWebView(frame: self.view.bounds)
//        Bundle.main.url(forResource: untitled, withExtension: html)
        let url = URL(string: "https://www.abc.edu.cn")
        let request = URLRequest(url: url!)
        webview.load(request)
        self.view.addSubview(webview)
    }
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //触摸屏幕停止并隐藏UIActivityIndicatorView
        self.Indicator.stopAnimating()
        self.Indicator.hidesWhenStopped = true
        
        //触摸屏幕走进度UIProgressView
        UIView.animate(withDuration:3.0) {
        self.Progress.setProgress(1, animated: true)
    }
    

    
}

}
