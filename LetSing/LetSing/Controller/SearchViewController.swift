//
//  MainViewController.swift
//  LetSing
//
//  Created by MACBOOK on 2018/5/2.
//  Copyright © 2018年 MACBOOK. All rights reserved.
//

import Foundation
import UIKit
import Alamofire


class SearchViewController: UIViewController {

    let PLAYLISTID = "UUMVhEr3rnPRDqAftmT5gq1A"
    let KEY = "AIzaSyBNMdTRxwA1waBGk_qFxUSRadSAw_dg3Bc"

    override func viewDidLoad() {
        super.viewDidLoad()


        getFeedVideos()


    }

    func getFeedVideos() {

//        Alamofire.SessionManager.default.request(<#T##url: URLConvertible##URLConvertible#>, method: <#T##HTTPMethod#>, parameters: <#T##Parameters?#>, encoding: <#T##ParameterEncoding#>, headers: <#T##HTTPHeaders?#>)

        Alamofire.request("https://www.googleapis.com/youtube/v3/search", method: .get, parameters: ["part" : "snippet", "q" : "等你下課", "key" : LSConstants.youtubeKey], encoding: URLEncoding.default, headers: nil).responseJSON{(response) -> Void in

            print(response.value)

            if let data = response.result.value as? [String: Any] {
                guard let items = data["items"] as? [AnyObject] else {
                    print("NO Data")
                    return
                }
                for video in items {
                    print("--------")
                    print(video)
                    print("--------")
                }
            }
        }
    }

}

