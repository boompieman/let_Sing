//
//  RecordVideoPanel.swift
//  LetSing
//
//  Created by MACBOOK on 2018/5/8.
//  Copyright © 2018年 MACBOOK. All rights reserved.
//

import Foundation
import UIKit
import YouTubePlayer

class RecordVideoPanelView: UIView {

    @IBOutlet weak var videoPlayerView: UIView!

    @IBOutlet weak var recordingProgress: UIProgressView!
    @IBOutlet weak var timeStartLabel: UILabel!
    @IBOutlet weak var timeEndLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }


}

