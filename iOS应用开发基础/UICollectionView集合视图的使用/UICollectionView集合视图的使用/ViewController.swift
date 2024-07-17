//
//  ViewController.swift
//  UICollectionView集合视图的使用
//
//  Created by student on 2024/5/15.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    var titleArr:Array<String>?
    @IBOutlet weak var myCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.titleArr = ["酒类商品","保健品类"]
        //通过流式布局设置相关参数
        let layout = UICollectionViewFlowLayout()
        //固定写法
//        layout.itemSize = CGSize(width:164 , height: 255)
        //相对写法
        layout.itemSize = CGSize(width: (UIScreen.main.bounds.size.width - 100)*0.5 , height: 255)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 10, right: 20)
        layout.minimumLineSpacing = 20.0
        layout.minimumInteritemSpacing = 20.0
        //设置节头和节角的宽高
        layout.headerReferenceSize = CGSize(width: 0, height: 50)
        layout.footerReferenceSize = CGSize(width: 0, height: 50)
        self.myCollectionView.collectionViewLayout = layout
    }
    
    //数据源
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "a", for: indexPath) as! MyCollectionViewCell
        cell.imgView.image = UIImage(named: "image\(indexPath.item+1)")
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader{
            let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "header", for: indexPath) as! MyCollectionReusableView
            headerView.contentLabel.text = self.titleArr![indexPath.section]
            return headerView
        }else{
            let footerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: "footer", for: indexPath)
            return footerView
        }
        
    }
    
    //代理
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.item)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.item % 2 == 0{
            return CGSize(width: 164, height: 255)
        }else{
            return CGSize(width: 200, height: 300)
        }
    }
    
    

}

