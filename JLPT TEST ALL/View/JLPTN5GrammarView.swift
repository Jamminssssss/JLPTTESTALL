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
    @State private var isFullScreenMode: Bool = false
    
    @State private var imageWidth: CGFloat = 300
    @State private var imageHeight: CGFloat = 300
    
    let dbHelper = SQLiteHelper()
    let tableName = "JLPTN5GrammarView"
    
    var body: some View {
        VStack(spacing: 10) {
            headerButtons
            quizTitle
            if isFullScreenMode {
                fullScreenQuestionView
            } else {
                questionViewer
                nextButton
            }
        }
        .padding(15)
        .hAlign(.center).vAlign(.top)
        .background(Color.white.ignoresSafeArea())
        .environment(\.colorScheme, .dark)
        .fullScreenCover(isPresented: $showScoreCard) {
            ScoreCardView(score: score / CGFloat(questions.count) * 100) {
                resetQuiz()
                showScoreCard = false
            }
        }
        .onAppear {
            dbHelper.createTable(tableName: tableName)
            if let savedProgress = dbHelper.loadProgress(tableName: tableName) {
                currentIndex = savedProgress.0
                score = savedProgress.1
            }
            questions = JLPTN5GrammarloadLocalData()
        }
    }
    
    private var headerButtons: some View {
        HStack {
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
            Spacer()
            Button {
                isFullScreenMode.toggle()
            } label: {
                Image(systemName: isFullScreenMode ? "arrow.down.right.and.arrow.up.left" : "arrow.up.left.and.arrow.down.right")
                    .font(.title3)
                    .foregroundColor(.blue)
            }
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
    
    // 전체 화면 모드에서 세로 스크롤을 하며 밑줄 포함 텍스트 표시
    private var fullScreenQuestionView: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 15) {
                if let questionText = questions[currentIndex].question {
                    let keywords = questions[currentIndex].underlinedKeywords ?? []
                    let parts = questionText.components(separatedBy: "___")
                    
                    VStack {
                        if parts.count == 2 {
                            HighlightedText(text: parts[0], keywords: keywords)
                            Text("_____")  // 밑줄 부분
                                .underline()
                                .font(.title)
                                .padding(.vertical, 10)
                                .foregroundColor(.black)
                            HighlightedText(text: parts[1], keywords: keywords)
                        } else {
                            HighlightedText(text: questionText, keywords: keywords)
                        }
                    }
                    .font(.system(size: 28))  // 전체 화면에서 큰 글씨로 설정
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                }
            }
            .padding()
        }
        .background(Color.white)
        .ignoresSafeArea()
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
                    
                    QuestionView2(
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
                    dbHelper.saveProgress(tableName: tableName, currentIndex: currentIndex, score: score)
                }
            }
        }
    }
    
    private func resetQuiz() {
        withAnimation(.easeInOut) {
            currentIndex = 0
            score = 0
            for index in questions.indices {
                questions[index].tappedAnswer = ""
            }
            dbHelper.resetProgress(tableName: tableName)
        }
    }
}

@ViewBuilder
func QuestionView1(
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
                
                VStack {
                    if parts.count == 2 {
                        HighlightedText(text: parts[0], keywords: keywords)
                        Text("_____")
                            .underline()
                            .font(.title)
                            .padding(.vertical, 10)
                            .foregroundColor(.black)
                        HighlightedText(text: parts[1], keywords: keywords)
                    } else {
                        HighlightedText(text: questionText, keywords: keywords)
                    }
                }
                .font(.system(size: 20))
                .padding(.bottom, 10)
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, alignment: .center)
            }
            
            VStack(spacing: 12) {
                ForEach(question.wrappedValue.options, id: \.self) { option in
                    ZStack {
                        OptionView(option, question.wrappedValue.answer == option && question.wrappedValue.tappedAnswer != "" ? Color.green : Color.black, scale: scale)
                        
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
func OptionView1(
    _ option: String,
    _ tint: Color,
    scale: Binding<CGFloat>
) -> some View {
    Text(option)
        .fixedSize(horizontal: false, vertical: true)
        .font(.system(size: 18))
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

