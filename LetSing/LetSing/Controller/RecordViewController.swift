//
//  ViewController.swift
//  LetSing
//
//  Created by MACBOOK on 2018/5/1.
//  Copyright © 2018年 MACBOOK. All rights reserved.
//

import UIKit
import Alamofire
import YouTubePlayer

class RecordViewController: UIViewController {

    @IBOutlet var videoPlayer: YouTubePlayerView!

    override func viewDidLoad() {
        super.viewDidLoad()
//        videoPlayer = YouTubePlayerView(frame: playerFrame)
        videoPlayer.loadVideoID("bu7nU9Mhpyo")
        videoPlayer.play()


        // Do any additional setup after loading the view, typically from a nib.
//        getFeedVideos()
    }



//    let PLAYLISTID = "UUMVhEr3rnPRDqAftmT5gq1A"
//    let KEY = "AIzaSyBNMdTRxwA1waBGk_qFxUSRadSAw_dg3Bc"

//    func getFeedVideos() {
//
//        Alamofire.request("https://www.googleapis.com/youtube/v3/playlistItems", method: .get, parameters: ["part" : "snippet" , "playlistId" : PLAYLISTID , "key" : KEY], encoding: URLEncoding.default, headers: nil).responseJSON{(response) -> Void in
//
////            print(response.result.value)
//
//            if let data = response.result.value as? [String: Any] {
//                guard let items = data["items"] as? [AnyObject] else {
//                    print("NO Data")
//                    return
//                }
//                for video in items {
//                    print("--------")
//                    print(video)
//                    print("--------")
//                }
//            }
//        }
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

