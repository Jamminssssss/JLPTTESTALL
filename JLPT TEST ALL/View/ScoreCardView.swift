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
    
    // 점수에 따라 메시지를 변경하는 함수
    private func feedbackMessage(for score: CGFloat) -> String {
        switch score {
        case 90...100:
            return "Excellent! Keep it up!"
        case 70..<90:
            return "Good job! A bit more practice will make perfect!"
        case 50..<70:
            return "Not bad! Keep practicing!"
        default:
            return "Don't worry, try again!"
        }
    }

    var body: some View {
        VStack {
            Spacer()

            VStack(spacing: 15) {
                Text("Your Score")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                
                // 점수에 따라 색상이 변경되는 텍스트
                Text(String(format: "%.0f", score) + "%")
                    .font(.largeTitle.bold())
                    .padding(.bottom, 10)
                    .foregroundColor(score >= 70 ? .green : .red)  // 70% 이상이면 녹색, 아니면 빨간색
                
                // 피드백 메시지
                Text(feedbackMessage(for: score))
                    .font(.body)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
            }
            .scaleEffect(1.2)
            .animation(.easeInOut(duration: 0.5), value: score)  // 점수 표시 애니메이션

            Spacer()

            // Restart 버튼
            CustomButton(title: "Restart") {
                onDismiss()  // 상위 뷰에서 퀴즈 상태를 초기화하는 콜백 호출
                dismiss()    // 현재 뷰(ScoreCardView)를 닫음
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(15)
        .background(Color.white.ignoresSafeArea())
    }
}
