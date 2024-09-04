//
//  AudioQuestion .swift
//  JlptN5Test
//
//  Created by Jeamin on 8/1/24.
//

import SwiftUI

struct AudioQuestion {
    var options: [String]
    var answer: String
    var audioFile: String? // Make audioFile optional
    var startTime: TimeInterval // Keep this non-optional for cases with audio
    var endTime: Double? // Make endTime optional
    var images: [String]? // Optional images
    var question: String? // Optional question property

    init(options: [String], answer: String, audioFile: String? = nil, startTime: TimeInterval = 0, endTime: Double? = nil, images: [String]? = nil, question: String? = nil) {
        self.options = options
        self.answer = answer
        self.audioFile = audioFile
        self.startTime = startTime
        self.endTime = endTime
        self.images = images
        self.question = question
    }
}
