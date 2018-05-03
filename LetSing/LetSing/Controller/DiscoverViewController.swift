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

//    let POMAppCount = 20
    @IBOutlet weak var discoverTypeCollectionView: UICollectionView!
    //
    @IBOutlet weak var discoverSongCollectionView: UICollectionView!
    //    @IBOutlet var screenshotsCollectionView:UICollectionView!
//    @IBOutlet var iconsCollectionView:UICollectionView!

    override func viewDidLoad() {
        
        setupTypeCollectionView()
        setupSongCollectionView()

        let discoverTypeCollectionViewFlowLayout = discoverTypeCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        discoverTypeCollectionViewFlowLayout.itemSize = CGSize(width: UIScreen.main.bounds.width / 2, height: 40)

        let discoverSongCollectionViewFlowLayout = discoverSongCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        discoverSongCollectionViewFlowLayout.itemSize = CGSize(width: UIScreen.main.bounds.width, height: discoverSongCollectionView.bounds.height)

    }

    func setupTypeCollectionView() {

        discoverTypeCollectionView.dataSource = self
        discoverTypeCollectionView.delegate = self
        
        let nib = UINib(nibName: String(describing: DiscoverTypeCollectionViewCell.self), bundle: nil)
        discoverTypeCollectionView.register(nib, forCellWithReuseIdentifier: String(describing: DiscoverTypeCollectionViewCell.self))
    }

    func setupSongCollectionView() {
        discoverSongCollectionView.delegate = self
        discoverSongCollectionView.dataSource = self

        let nib = UINib(nibName: String(describing: DiscoverSongCollectionViewCell.self), bundle: nil)
        discoverSongCollectionView.register(nib, forCellWithReuseIdentifier: String(describing: DiscoverSongCollectionViewCell.self))
    }

    func scrollViewDidScroll(_ scrollView: UIScrollView)
    {
        let discoverTypeCollectionViewFlowLayout = discoverTypeCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        let discoverSongCollectionViewFlowLayout = discoverSongCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        let discoverTypeDistanceBetweenItemsCenter = discoverTypeCollectionViewFlowLayout.minimumLineSpacing + discoverTypeCollectionViewFlowLayout.itemSize.width
        let discoverSongDistanceBetweenItemsCenter = discoverSongCollectionViewFlowLayout.minimumLineSpacing + discoverSongCollectionViewFlowLayout.itemSize.width
        let offsetFactor = discoverTypeDistanceBetweenItemsCenter / discoverSongDistanceBetweenItemsCenter

        if (scrollView == discoverTypeCollectionView) {
            let xOffset = scrollView.contentOffset.x - scrollView.frame.origin.x
            discoverSongCollectionView.contentOffset.x = xOffset / offsetFactor
        }
        else if (scrollView == discoverSongCollectionView) {
            let xOffset = scrollView.contentOffset.x - scrollView.frame.origin.x
            discoverTypeCollectionView.contentOffset.x = xOffset * offsetFactor
        }
    }
}

extension DiscoverViewController: UICollectionViewDelegate, UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return 5

    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        if collectionView == self.discoverTypeCollectionView {

            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: DiscoverTypeCollectionViewCell.self), for: indexPath)

            guard let discoverTypeCollectionViewCell = cell as? DiscoverTypeCollectionViewCell else {return cell}

            discoverTypeCollectionViewCell.typeLabel.text = "777777"

            discoverTypeCollectionViewCell.layer.cornerRadius = 10

            return discoverTypeCollectionViewCell

        }

        else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: DiscoverSongCollectionViewCell.self), for: indexPath)

            guard let discoverSongCollectionViewCell = cell as? DiscoverSongCollectionViewCell else {return cell}

            return discoverSongCollectionViewCell
        }
    }
}

extension DiscoverViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        if collectionView == self.discoverTypeCollectionView {

            let width = UIScreen.main.bounds.width / 2

            let height = CGFloat(40)

            return CGSize(width: width, height: height)
        }

        else {
            let width = UIScreen.main.bounds.width

            let height = self.discoverSongCollectionView.bounds.height

            return CGSize(width: width, height: height)
        }
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if collectionView == self.discoverTypeCollectionView {

            let discoverTypeSectionInset = UIScreen.main.bounds.width / 4.0

            return UIEdgeInsets(top: 0, left: discoverTypeSectionInset, bottom: 0, right: discoverTypeSectionInset)
        }

        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {

        return 0
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {

        return 0
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {

        return CGSize.zero
    }
}

