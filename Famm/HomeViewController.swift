//
//  HomeViewController.swift
//  Famm_tvOS
//
//  Created by Kazuya Ueoka on 2015/11/11.
//  Copyright © 2015年 TImers Inc. All rights reserved.
//

import UIKit

class HomeViewController :UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout
{
    @IBOutlet var collectionView :UICollectionView?
    let cellIdentifier :String = "CollectionViewCell"
    let headerIdentifier :String = "CollectionHeaderVIew"
    var images :Array<UIImage> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.colorWithCSS(FAMM_THEME_COLOR)
        
        images = [UIImage(named: "IMG_0194.jpg")!, UIImage(named: "IMG_0195.jpg")!, UIImage(named: "IMG_0198.jpg")!, UIImage(named: "IMG_0199.jpg")!, UIImage(named: "IMG_0200.jpg")!, UIImage(named: "IMG_0194.jpg")!, UIImage(named: "IMG_0195.jpg")!, UIImage(named: "IMG_0198.jpg")!, UIImage(named: "IMG_0199.jpg")!, UIImage(named: "IMG_0200.jpg")!]
        self.collectionView?.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: cellIdentifier)
        self.collectionView?.registerClass(UICollectionReusableView.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: headerIdentifier)
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell :UICollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier(cellIdentifier, forIndexPath: indexPath)
        
        let imageView :UIImageView = UIImageView(image: images[indexPath.row])
        imageView.frame = CGRect(x: 0.0, y: 0.0, width: 240.0, height: 180.0)
        imageView.contentMode = UIViewContentMode.ScaleAspectFit
        imageView.adjustsImageWhenAncestorFocused = true
        imageView.layer.cornerRadius = 8.0
        cell.addSubview(imageView)
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, shouldUpdateFocusInContext context: UICollectionViewFocusUpdateContext) -> Bool {
        return true
    }
    
    func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        var view :UICollectionReusableView?
        
        if (kind == UICollectionElementKindSectionHeader)
        {
            view = collectionView.dequeueReusableSupplementaryViewOfKind(UICollectionElementKindSectionHeader, withReuseIdentifier: headerIdentifier, forIndexPath: indexPath)
            let label :UILabel = UILabel(frame: CGRect(x: 10.0, y: 5.0, width: 380.0, height: 30.0))
            label.text = "2015.11"
            view?.addSubview(label)
        }
        
        return view!
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: 400.0, height: 40.0)
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        print("%@", indexPath)
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSize(width: 240.0, height: 180.0)
    }
}
