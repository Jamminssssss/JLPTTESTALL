//
//  Question.swift
//  JlptN5Test
//
//  Created by Jeamin on 7/31/24.
//

import SwiftUI

struct Question: Identifiable, Codable {
    var id: UUID = UUID()  // Unique ID for the question
    var question: String?  // The question text, which can be nil
    var options: [String]  // List of options for the question
    var answer: String  // The correct answer
    var tappedAnswer: String = ""  // The user's selected answer
    var imageName: String?  // Optional image name
    var underlinedKeywords: [String]?  // Optional list of keywords to underline in the question text
    var optionKeywords: [[String]]?  // Optional list of keywords for each option (list of lists)

    // CodingKeys to map properties to their respective keys during encoding/decoding
    enum CodingKeys: String, CodingKey {
        case id
        case question
        case options
        case answer
        case tappedAnswer
        case imageName
        case underlinedKeywords
        case optionKeywords
    }
}
