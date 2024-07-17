//
//  ViewController.swift
//  test
//
//  Created by student on 2024/5/22.
//

import UIKit

class ViewController: UIViewController {

    //手动型（可控制）
    @IBAction func goto(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "abc")
        self.present(vc, animated: true, completion: nil)
        
    }
    
    //加载视图时调用
    override func loadView() {
        super.loadView()
        print(#function)
    }
    //视图加载完成时调用
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
        self.view.backgroundColor = .red
    }
    //将要布置子视图时调用
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print(#function)
    }
    //已经布置子视图时调用
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print(#function)
    }
    //界面将要显示时调用
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#function)
    }
    //界面将要消失时调用
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#function)
    }
    //析构方法
    deinit {
        print("deinit")
    }
    //收到内存警告时调用
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print(#function)
    }
}

