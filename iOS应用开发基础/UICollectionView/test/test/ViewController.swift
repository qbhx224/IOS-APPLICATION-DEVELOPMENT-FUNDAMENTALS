//
//  ViewController.swift
//  test
//
//  Created by student on 2024/5/15.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {

    @IBOutlet weak var MyCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //通过流式布局设置相关参数
        let layout = UICollectionViewFlowLayout()
        //固定写法
//        layout.itemSize = CGSize(width: 200, height: 250)
        //相对写法
        layout.itemSize = CGSize(width: (UIScreen.main.bounds.size.width - 50)*0.6, height: 255)
        layout.sectionInset = UIEdgeInsets(top: 10, left: 40, bottom: 10, right: 40)
        layout.minimumLineSpacing = 20
        layout.minimumInteritemSpacing = 20
        self.MyCollectionView.collectionViewLayout = layout
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mcv", for: indexPath)
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.item)
    }
    
    func collectionview(_ collectionView:UICollectionView,layout collectionViewLayout:UICollectionViewLayout,sizeForItemAt indexPath:IndexPath) -> CGSize{
        if indexPath.item % 2 == 0{
            return CGSize(width: 164, height: 255)
        }else{
            return CGSize(width: 200, height: 255)
        }
    }


}


