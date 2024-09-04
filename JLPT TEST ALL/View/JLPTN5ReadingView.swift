//
//  JLPTN5ReadingView.swift
//  JlptN5Test
//
//  Created by Jeamin on 8/5/24.
//

import SwiftUI

struct JLPTN5ReadingView: View {
    @State private var questions: [Question] = []
    @State private var startQuiz: Bool = false
    @AppStorage("log_status") private var logStatus: Bool = false
    var onFinish: () -> ()
    @Environment(\.dismiss) private var dismiss
    @State private var currentIndex: Int = 0
    @State private var score: CGFloat = 0
    @State private var showScoreCard: Bool = false
    @State private var fontSizeChange: CGFloat = 0
    @State private var progress: CGFloat = 0
    @State private var progressString: String = "0%"

    // 이미지 크기 조정을 위한 상태 변수
    @State private var imageWidth: CGFloat = 800
    @State private var imageHeight: CGFloat = 800

    var body: some View {
        VStack(spacing: 10) {
            dismissButton
            quizTitle
            progressBar
            questionViewer
            nextButton
        }
        .padding(15)
        .hAlign(.center).vAlign(.top)
        .background(Color.white.ignoresSafeArea())
        .environment(\.colorScheme, .dark)
        .fullScreenCover(isPresented: $showScoreCard) {
            ScoreCardView(score: score / CGFloat(questions.count) * 100) {
                dismiss()
                onFinish()
            }
        }
        .task {
            questions = JLPTN5ReadingloadLocalData() // 변경된 부분
        }
    }

    // UI 구성 요소
    private var dismissButton: some View {
        Button {
            dismiss()
        } label: {
            HStack {
                Image(systemName: "xmark")
                    .font(.title3)
                    .foregroundColor(.red)

                Text("Exit")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.red)
            }
        }
        .hAlign(.leading)
    }

    private var quizTitle: some View {
        Text("読解")
            .font(.title)
            .fontWeight(.semibold)
            .hAlign(.center)
            .foregroundColor(.black)
    }

    private var progressBar: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .fill(Color.black.opacity(0.2))
                Rectangle()
                    .fill(Color.green)
                    .frame(width: progress * geometry.size.width, alignment: .leading)
                Text(progressString)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .center)
            }
            .clipShape(Capsule())
        }
        .frame(height: 20)
        .padding(.top, 6)
    }

    private var questionViewer: some View {
        GeometryReader { geometry in
            ForEach(questions.indices, id: \.self) { index in
                if currentIndex == index {
                    // `questions` 배열에서 `currentIndex` 위치의 요소를 `Binding`으로 래핑합니다.
                    let questionBinding = Binding(
                        get: { questions[index] },
                        set: { newValue in
                            questions[index] = newValue
                        }
                    )
                    
                    QuestionView1(
                        question: questionBinding, // Binding<Question>으로 전달
                        fontSizeChange: $fontSizeChange,
                        scale: .constant(1.0),
                        currentIndex: $currentIndex,
                        questions: $questions,
                        score: $score,
                        imageWidth: $imageWidth,
                        imageHeight: $imageHeight
                    )
                    .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
                }
            }
        }
        .padding(.horizontal, -15)
        .padding(.vertical, 15)
    }

    private var nextButton: some View {
        CustomButton(title: currentIndex == (questions.count - 1) ? "End" : "Next Question") {
            if currentIndex == (questions.count - 1) {
                showScoreCard.toggle()
            } else {
                withAnimation(.easeInOut) {
                    currentIndex += 1
                    progress = CGFloat(currentIndex) / CGFloat(questions.count - 1)
                    progressString = String(format: "%.0f%%", progress * 100)
                }
            }
        }
    }
}

@ViewBuilder
func QuestionView15(
    question: Binding<Question>,
    fontSizeChange: Binding<CGFloat>,
    scale: Binding<CGFloat>,
    currentIndex: Binding<Int>,
    questions: Binding<[Question]>,
    score: Binding<CGFloat>,
    imageWidth: Binding<CGFloat>,
    imageHeight: Binding<CGFloat>
) -> some View {
    ScrollView {
        VStack(alignment: .center, spacing: 15) {
            Text("Question \(currentIndex.wrappedValue + 1)/\(questions.wrappedValue.count)")
                .font(.callout)
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity, alignment: .center)

            if let questionText = question.wrappedValue.question {
                Text(questionText)
                    .font(.title)
                    .padding(.bottom, 10)
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, alignment: .center)
            }

            if let imageName = question.wrappedValue.imageName {
                ScrollView(.horizontal) {
                    HStack {
                        Spacer()
                        GeometryReader { geometry in
                            Image(imageName)
                                .resizable()
                                .scaledToFit()
                                .clipped()
                                .gesture(
                                    DragGesture()
                                        .onChanged { value in
                                            let newWidth = max(100, imageWidth.wrappedValue + value.translation.width)
                                            let newHeight = max(100, imageHeight.wrappedValue + value.translation.height)
                                            imageWidth.wrappedValue = newWidth
                                            imageHeight.wrappedValue = newHeight
                                        }
                                )
                                .gesture(
                                    TapGesture(count: 2)
                                        .onEnded { _ in
                                            imageWidth.wrappedValue = 800
                                            imageHeight.wrappedValue = 800
                                        }
                                )
                        }
                        .frame(width: imageWidth.wrappedValue, height: imageHeight.wrappedValue)
                        Spacer()
                    }
                }
            }

            VStack(spacing: 12) {
                ForEach(question.wrappedValue.options, id: \.self) { option in
                    ZStack {
                        OptionView1(option, question.wrappedValue.answer == option && question.wrappedValue.tappedAnswer != "" ? Color.green : Color.black, scale: scale)

                        if question.wrappedValue.tappedAnswer == option && question.wrappedValue.tappedAnswer != question.wrappedValue.answer {
                            OptionView1(option, Color.red, scale: scale)
                        }
                    }
                    .contentShape(Rectangle())
                    .onTapGesture {
                        if question.wrappedValue.tappedAnswer.isEmpty {
                            question.wrappedValue.tappedAnswer = option
                            if option == question.wrappedValue.answer {
                                score.wrappedValue += 1
                            }
                        }
                    }
                }
            }
        }
    }
}

@ViewBuilder
func OptionView15(
    _ option: String,
    _ tint: Color,
    scale: Binding<CGFloat>
) -> some View {
    Text(option)
        .fixedSize(horizontal: false, vertical: true)
        .font(.system(size: 25 + scale.wrappedValue))
        .foregroundColor(tint)
        .padding(.horizontal, 5)
        .padding(.vertical, 10)
        .hAlign(.center)
        .background {
            RoundedRectangle(cornerRadius: 12, style: .continuous)
                .fill(tint.opacity(0.15))
                .background {
                    RoundedRectangle(cornerRadius: 12, style: .continuous)
                        .stroke(tint.opacity(tint == .gray ? 0.15 : 1), lineWidth: 2)
                }
        }
}

#Preview {
    ContentView()
}
