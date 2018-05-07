//
//  MainViewController.swift
//  LetSing
//
//  Created by MACBOOK on 2018/5/2.
//  Copyright © 2018年 MACBOOK. All rights reserved.
//

import Foundation
import UIKit

class SearchViewController: UIViewController {

    var searchController: LSSearchController!

//    var searchBarView = UISearchBar()

    var songManager = SongManager()

    override func viewDidLoad() {
        super.viewDidLoad()

        configureCustomSearchController()

        searchController.searchBarDelegate = self

        songManager.delegate = self
    }

    func configureCustomSearchController() {

        let barFrame = CGRect(x: 0.0, y: 0.0, width: (self.navigationController?.navigationBar.frame.width)!, height: (self.navigationController?.navigationBar.frame.height)!)

        searchController = LSSearchController(searchResultsController: self, searchBarFrame: barFrame, searchBarFont: UIFont(name: "Futura", size: 16.0)!, searchBarTextColor: UIColor.white, searchBarTintColor: UIColor(red: 215/255, green: 68/255, blue: 62/255, alpha: 1))

//        LSSearchController.searchBarDelegate = self

        self.navigationItem.titleView = searchController.customSearchBar


    }
}

extension SearchViewController: SongManagerDelegate {

    func manager(_ manager: SongManager, didGet songs: [Song]) {
        print(songs)
    }
}

extension SearchViewController: LSSearchControllerDelegate {
    func didStartSearching() {
        print("did start")
    }

    func didTapOnSearchButton(searchText: String) {
        songManager.getSearchResult(songName: searchText)
    }

    func didTapOnCancelButton() {
        print("did cancel")
    }

    func didChangeSearchText(searchText: String) {
        print("did change")
    }


}
