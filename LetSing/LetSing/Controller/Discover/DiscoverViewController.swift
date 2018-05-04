//
//  DiscoverViewController.swift
//  LetSing
//
//  Created by MACBOOK on 2018/5/2.
//  Copyright © 2018年 MACBOOK. All rights reserved.
//

import Foundation
import UIKit


class DiscoverViewController: UIViewController {

    //    @IBOutlet var screenshotsCollectionView:UICollectionView!
//    @IBOutlet var iconsCollectionView:UICollectionView!

    override func viewDidLoad() {

        print("sss")

//        setupTypeCollectionView()
//        setupSongCollectionView()

    }

//    func setupTypeCollectionView() {
//
//        discoverTypeCollectionView.dataSource = self
//        discoverTypeCollectionView.delegate = self
//
//        let nib = UINib(nibName: String(describing: DiscoverTypeCollectionViewCell.self), bundle: nil)
//        discoverTypeCollectionView.register(nib, forCellWithReuseIdentifier: String(describing: DiscoverTypeCollectionViewCell.self))
//
//        // set type collection view layout
//        let discoverTypeCollectionViewFlowLayout = discoverTypeCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
//        discoverTypeCollectionViewFlowLayout.itemSize = CGSize(width: UIScreen.main.bounds.width / 2, height: 40)
//        discoverTypeCollectionViewFlowLayout.minimumLineSpacing = 0
//    }
//
//    func setupSongCollectionView() {
//        discoverSongCollectionView.delegate = self
//        discoverSongCollectionView.dataSource = self
//
//        let nib = UINib(nibName: String(describing: DiscoverSongCollectionViewCell.self), bundle: nil)
//        discoverSongCollectionView.register(nib, forCellWithReuseIdentifier: String(describing: DiscoverSongCollectionViewCell.self))
//
//        // set song collection view layout
//        let discoverSongCollectionViewFlowLayout = discoverSongCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
////        discoverSongCollectionViewFlowLayout.itemSize = CGSize(width: UIScreen.main.bounds.width, height: discoverSongCollectionView.bounds.height)
//
//        discoverSongCollectionViewFlowLayout.itemSize = CGSize(width: UIScreen.main.bounds.width, height: 300)
//
//        discoverSongCollectionViewFlowLayout.minimumLineSpacing = 0
//    }
//
//    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        let discoverTypeCollectionViewFlowLayout = discoverTypeCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
//        let discoverSongCollectionViewFlowLayout = discoverSongCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
//        let discoverTypeDistanceBetweenItemsCenter = discoverTypeCollectionViewFlowLayout.minimumLineSpacing + discoverTypeCollectionViewFlowLayout.itemSize.width
//        let discoverSongDistanceBetweenItemsCenter = discoverSongCollectionViewFlowLayout.minimumLineSpacing + discoverSongCollectionViewFlowLayout.itemSize.width
//        let offsetFactor = discoverTypeDistanceBetweenItemsCenter / discoverSongDistanceBetweenItemsCenter
//
//        if (scrollView == discoverTypeCollectionView) {
//
//            let xOffset = scrollView.contentOffset.x - scrollView.frame.origin.x
//            discoverSongCollectionView.contentOffset.x = xOffset / offsetFactor
//        }
//        else if (scrollView == discoverSongCollectionView) {
//            let xOffset = scrollView.contentOffset.x - scrollView.frame.origin.x
//            discoverTypeCollectionView.contentOffset.x = xOffset * offsetFactor
//        }
//    }
}
//
//extension DiscoverViewController: UICollectionViewDelegate, UICollectionViewDataSource {
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//
//        return 5
//
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//
//        if collectionView == self.discoverTypeCollectionView {
//
//            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: DiscoverTypeCollectionViewCell.self), for: indexPath)
//
//            guard let discoverTypeCollectionViewCell = cell as? DiscoverTypeCollectionViewCell else {return cell}
//
//            discoverTypeCollectionViewCell.typeLabel.text = "777777"
//
//            discoverTypeCollectionViewCell.layer.cornerRadius = 10
//
//            return discoverTypeCollectionViewCell
//
//        }
//
//        else {
//            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: DiscoverSongCollectionViewCell.self), for: indexPath)
//
//            if indexPath.row == 1 {
//                cell.backgroundColor = UIColor.gray
//            }
//
//            if indexPath.row == 2 {
//                cell.backgroundColor = UIColor.blue
//            }
//
//            if indexPath.row == 3 {
//                cell.backgroundColor = UIColor.black
//            }
//
//            if indexPath.row == 4 {
//                cell.backgroundColor = UIColor.red
//            }
//
//            guard let discoverSongCollectionViewCell = cell as? DiscoverSongCollectionViewCell else {return cell}
//
//            return discoverSongCollectionViewCell
//        }
//    }
//
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//
//        print("indexPath", indexPath)
//        if collectionView == self.discoverTypeCollectionView {
//            self.discoverSongCollectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
//        }
//    }
//}
//
//extension DiscoverViewController: UICollectionViewDelegateFlowLayout {
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        if collectionView == self.discoverTypeCollectionView {
//
//            let discoverTypeSectionInset = UIScreen.main.bounds.width / 4.0
//
//            return UIEdgeInsets(top: 0, left: discoverTypeSectionInset, bottom: 0, right: discoverTypeSectionInset)
//        }
//
//        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//
//        return 0
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//
//        return 0
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
//
//        return CGSize.zero
//    }
//}
//
//
