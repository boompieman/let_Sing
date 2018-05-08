//
//  ViewController.swift
//  LetSing
//
//  Created by MACBOOK on 2018/5/1.
//  Copyright © 2018年 MACBOOK. All rights reserved.
//

import UIKit
import Alamofire

class RecordViewController: UIViewController {

    private static var observerContext = 0

    @IBOutlet weak var recordNavigationView: RecordNavigationView!
    @IBOutlet weak var recordVideoPanelView: RecordVideoPanelView!

    var song: Song?

    override func viewDidLoad() {
        super.viewDidLoad()
//        videoPlayer = YouTubePlayerView(frame: playerFrame)

        setBar()
        setupRecordNavigationView()

        registerNotification()
    }

    private func registerNotification() {
//        NotificationCenter.default.addObserver(self, selector: #selector(didCompleteDuration(notification:)), name: .finishVideoDuration, object: self.videoProvider)
    }

    // MARK: - Notification
    @objc private func didCompleteDuration(notification: NSNotification) {

//        videoPanelView.updateEndTime(time: videoProvider.duration)
    }

    func setupRecordNavigationView() {
        recordNavigationView.titleLabel.text = song?.name
    }

    @IBAction func didTappedBackButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

    func setBar() {
        self.navigationController?.isNavigationBarHidden = true
        self.tabBarController?.tabBar.isHidden = true
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        self.tabBarController?.tabBar.isHidden = false
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
}

