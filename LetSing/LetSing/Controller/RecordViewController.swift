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
    }





    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

