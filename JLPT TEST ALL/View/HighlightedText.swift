//
//  HighlightedText.swift
//  JlptN5Test
//
//  Created by Jeamin on 8/14/24.
//

import SwiftUI

// A view to display text with specific keywords underlined
struct HighlightedText: View {
    let text: String
    let keywords: [String]

    var body: some View {
        Text(formattedText)
            .font(.title)
            .padding(.bottom, 10)
            .foregroundColor(.black)
            .frame(maxWidth: .infinity, alignment: .center)
    }

    private var formattedText: AttributedString {
        var attributedText = AttributedString(text)
        
        for keyword in keywords {
            // Find all occurrences of the keyword in the text
            let keywordRanges = text.ranges(of: keyword, options: .caseInsensitive)
            for range in keywordRanges {
                if let attributedRange = attributedText.range(of: String(text[range]), options: .caseInsensitive) {
                    attributedText[attributedRange].underlineStyle = .single
                }
            }
        }
        
        return attributedText
    }
}

extension String {
    func ranges(of substring: String, options: String.CompareOptions = []) -> [Range<String.Index>] {
        var ranges: [Range<String.Index>] = []
        var searchRange = startIndex..<endIndex
        while let range = self.range(of: substring, options: options, range: searchRange) {
            ranges.append(range)
            searchRange = range.upperBound..<endIndex
        }
        return ranges
    }
}
