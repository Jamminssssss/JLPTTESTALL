//
//  JLPTN5GrammarView.swift
//  JlptN5Test
//
//  Created by Jeamin on 8/4/24.
//
import SwiftUI

struct JLPTN5GrammarView: View {
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
    @State private var imageWidth: CGFloat = 300
    @State private var imageHeight: CGFloat = 300

    var body: some View {
        VStack(spacing: 10) {
            AdBannerView(adUnitID: "ca-app-pub-9940677842340433/8081727159")
                .frame(width: 320, height: 50)
            dismissButton
            quizTitle
            progressBar
            questionViewer
            nextButton
            Spacer()
            AdBannerView(adUnitID: "ca-app-pub-9940677842340433/6768645481")
                .frame(width: 320, height: 50)
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
            questions = JLPTN5GrammarloadLocalData() // 변경된 부분
        }
    }

    // UI 구성 요소
    private var dismissButton: some View {
        Button {
            dismiss()
        } label: {
            Image(systemName: "xmark")
                .font(.title3)
                .foregroundColor(.red)

            Text("Exit")
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundColor(.red)
        }
        .hAlign(.leading)
    }

    private var quizTitle: some View {
        Text("文法")
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
                    
                    QuestionView5(
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
func QuestionView10(
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
                let keywords = question.wrappedValue.underlinedKeywords ?? []
                let parts = questionText.components(separatedBy: "___")
                
                // 텍스트가 너무 길 경우 가로로 스크롤할 수 있도록 ScrollView를 사용합니다.
                ScrollView(.horizontal) {
                    HStack {
                        if parts.count == 2 {
                            VStack(alignment: .center, spacing: 0) {
                                HighlightedText(text: parts[0], keywords: keywords)
                                Text("_____")
                                    .underline()
                                    .font(.title)
                                    .padding(.bottom, 10)
                                    .foregroundColor(.black)
                                HighlightedText(text: parts[1], keywords: keywords)
                            }
                        } else {
                            HighlightedText(text: questionText, keywords: keywords)
                        }
                    }
                }
                .frame(maxWidth: .infinity) // ScrollView가 가능한 모든 너비를 사용하도록 설정합니다.
            }

            if let imageName = question.wrappedValue.imageName {
                ScrollView(.horizontal) {
                    HStack {
                        Spacer()
                        Image(imageName)
                            .resizable()
                            .scaledToFit()
                            .clipped()
                            .frame(width: imageWidth.wrappedValue, height: imageHeight.wrappedValue)
                            .gesture(
                                DragGesture()
                                    .onChanged { value in
                                        let newWidth = max(100, imageWidth.wrappedValue + value.translation.width)
                                        let newHeight = max(100, imageHeight.wrappedValue + value.translation.height)
                                        imageWidth.wrappedValue = newWidth
                                        imageHeight.wrappedValue = newHeight
                                    }
                                    .exclusively(
                                        before: TapGesture(count: 2).onEnded { _ in
                                            imageWidth.wrappedValue = 300
                                            imageHeight.wrappedValue = 300
                                        }
                                    )
                            )
                        Spacer()
                    }
                }
            }

            VStack(spacing: 12) {
                ForEach(question.wrappedValue.options, id: \.self) { option in
                    ZStack {
                        OptionView5(option,
                                   question.wrappedValue.answer == option && question.wrappedValue.tappedAnswer != "" ? Color.green : Color.black,
                                   scale: scale)

                        if question.wrappedValue.tappedAnswer == option && question.wrappedValue.tappedAnswer != question.wrappedValue.answer {
                            OptionView5(option, Color.red, scale: scale)
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
func OptionView10(
    _ option: String,
    _ tint: Color,
    scale: Binding<CGFloat>,
    isSelected: Bool = false,  // 선택된 옵션을 구분하기 위한 매개변수
    optionKeywords: [String] = []  // 옵션 키워드 매개변수 추가
) -> some View {
    let parts = option.components(separatedBy: "___")
    
    VStack(alignment: .center, spacing: 0) {
        if parts.count == 2 {
            HighlightedText(text: parts[0], keywords: optionKeywords)
            Text("_____")
                .underline()
                .font(.system(size: 25 + scale.wrappedValue))
                .padding(.bottom, 10)
                .foregroundColor(tint)
            HighlightedText(text: parts[1], keywords: optionKeywords)
        } else {
            HighlightedText(text: option, keywords: optionKeywords)
        }
    }
    .padding(.horizontal, 5)
    .padding(.vertical, 10)
    .hAlign(.center)
    .background {
        RoundedRectangle(cornerRadius: 12, style: .continuous)
            .fill(isSelected ? tint.opacity(0.3) : tint.opacity(0.15))
            .background {
                RoundedRectangle(cornerRadius: 12, style: .continuous)
                    .stroke(tint.opacity(tint == .gray ? 0.15 : 1), lineWidth: 2)
            }
    }
    .accessibility(label: Text(option))
}


#Preview {
    ContentView()
}
