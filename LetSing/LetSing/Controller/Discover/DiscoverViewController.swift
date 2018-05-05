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

    var typeTranslation: CGFloat?
    var songTranslation: CGFloat = 0.0

    var offsetFactor: CGFloat = 0.0

    override func viewDidLoad() {

        print("handle didScroll")
    }


    override func viewWillAppear(_ animated: Bool) {
        super .viewWillAppear(true)

        let typeVC = childViewControllers[0] as? DiscoverTypeCollectionViewController
        let songVC = childViewControllers[1] as? DiscoverSongCollectionViewController

        offsetFactor = (typeVC?.discoverTypeDistanceBetweenItemsCenter)! / (songVC?.discoverSongDistanceBetweenItemsCenter)!

        print(offsetFactor)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {

            print("iiiiii", identifier)

            switch identifier {
            case "DiscoverTypeCollectionViewController":
                if let typeVC = segue.destination as? DiscoverTypeCollectionViewController {
                    typeVC.delegate = self
                }
            default:
                if let songVC = segue.destination as? DiscoverSongCollectionViewController {
                    songVC.delegate = self
                }
            }
        }
    }


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

extension DiscoverViewController: DiscoverTypeCollectionViewControllerDelegate, DiscoverSongCollectionViewControllerDelegate {

    func typeViewDidScroll(_ controller: DiscoverTypeCollectionViewController, translation: CGFloat) {
        self.typeTranslation = translation

        let songVC = childViewControllers[1] as? DiscoverSongCollectionViewController

        print("ttttt",translation)
        songVC?.collectionView.contentOffset.x = translation / offsetFactor
    }

    func songViewDidScroll(_ controller: DiscoverSongCollectionViewController, translation: CGFloat) {
        self.songTranslation = translation

        let typeVC = childViewControllers[0] as? DiscoverTypeCollectionViewController

        typeVC?.collectionView.contentOffset.x = translation * offsetFactor
    }
}
