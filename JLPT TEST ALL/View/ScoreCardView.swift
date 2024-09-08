//
//  ScoreCardView.swift
//  JlptN5Test
//
//  Created by Jeamin on 7/31/24.
//

import SwiftUI

struct ScoreCardView: View {
    var score: CGFloat
    var onDismiss: () -> ()
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        VStack {
            AdBannerView(adUnitID: "ca-app-pub-9940677842340433/8081727159")
                .frame(width: 320, height: 50)
            Spacer() // Add this line
            VStack(spacing: 15) {
                Text("What is your percent correct?")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                
                Text(String(format: "%.0f", score) + "%")
                    .font(.title.bold())
                    .padding(.bottom, 10)
            }
            
            Spacer() // Add this line
            AdBannerView(adUnitID: "ca-app-pub-9940677842340433/6768645481")
                .frame(width: 320, height: 50)
            CustomButton(title: "Restart") {
                // Firebase 관련 코드 제거
                // 대신 다른 작업을 수행하거나, 단순히 로그를 출력하는 등
                onDismiss()
                dismiss()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(15)
    }
}
