//
//  JLPTN5.swift
//  JlptN5Test
//
//  Created by Jeamin on 7/31/24.
//

import SwiftUI

struct JLPTN5: View {
    @State private var questions: [Question] = []
    @State private var startQuiz: Bool = false
    @AppStorage("log_status") private var logStatus: Bool = false
    var onFinish: () -> ()
    @Environment(\.dismiss) private var dismiss
    @State private var currentIndex: Int = 0
    @State private var score: CGFloat = 0
    @State private var showScoreCard: Bool = false
    @State private var fontSizeChange: CGFloat = 0

    @State private var imageWidth: CGFloat = 300
    @State private var imageHeight: CGFloat = 300
    
    let dbHelper = SQLiteHelper()
    let tableName = "JLPTN5Progress"  // 고유한 테이블 이름 지정

    var body: some View {
        VStack(spacing: 10) {
            dismissButton
            quizTitle
            questionViewer
            nextButton
        }
        .padding(15)
        .hAlign(.center).vAlign(.top)
        .background(Color.white.ignoresSafeArea())
        .environment(\.colorScheme, .dark)
        .fullScreenCover(isPresented: $showScoreCard) {
            // ScoreCardView에서 퀴즈 재시작 처리
            ScoreCardView(score: score / CGFloat(questions.count) * 100) {
                resetQuiz()   // 퀴즈 상태를 초기화
                showScoreCard = false  // ScoreCardView를 닫음
            }
        }
        .onAppear {
            // 테이블 생성 및 진행 상황 불러오기
            dbHelper.createTable(tableName: tableName)
            if let savedProgress = dbHelper.loadProgress(tableName: tableName) {
                currentIndex = savedProgress.0
                score = savedProgress.1
            }

            // 문제 불러오기
            questions = JLPTN5loadLocalData()
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
        Text("文字、語彙")
            .font(.title)
            .fontWeight(.semibold)
            .hAlign(.center)
            .foregroundColor(.black)
    }

    private var questionViewer: some View {
        GeometryReader { geometry in
            ForEach(questions.indices, id: \.self) { index in
                if currentIndex == index {
                    let questionBinding = Binding(
                        get: { questions[index] },
                        set: { newValue in
                            questions[index] = newValue
                        }
                    )
                    
                    QuestionView1(
                        question: questionBinding,
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
        CustomButton(title: currentIndex == (questions.count - 1) ? "end" : "next question") {
            if currentIndex == (questions.count - 1) {
                showScoreCard.toggle()
            } else {
                withAnimation(.easeInOut) {
                    currentIndex += 1

                    // SQLite에 진행 상황 저장
                    dbHelper.saveProgress(tableName: tableName, currentIndex: currentIndex, score: score)
                }
            }
        }
    }

    // 퀴즈 초기화 로직
    private func resetQuiz() {
        withAnimation(.easeInOut) {
            currentIndex = 0
            score = 0
            // 각 문제의 tappedAnswer를 초기화하여 선택된 옵션을 모두 초기화
            for index in questions.indices {
                questions[index].tappedAnswer = ""  // 선택된 답변 초기화
            }
            dbHelper.resetProgress(tableName: tableName) // SQLite에 저장된 진행 상황 초기화
        }
    }
}





@ViewBuilder
func QuestionView(
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

           

            VStack(spacing: 12) {
                ForEach(question.wrappedValue.options, id: \.self) { option in
                    ZStack {
                        OptionView(option,
                                   question.wrappedValue.answer == option && question.wrappedValue.tappedAnswer != "" ? Color.green : Color.black,
                                   scale: scale)

                        if question.wrappedValue.tappedAnswer == option && question.wrappedValue.tappedAnswer != question.wrappedValue.answer {
                            OptionView(option, Color.red, scale: scale)
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
func OptionView(
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
            HighlightedText(text: option, keywords: optionKeywords)  // 수정된 부분: HighlightedText 사용
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
