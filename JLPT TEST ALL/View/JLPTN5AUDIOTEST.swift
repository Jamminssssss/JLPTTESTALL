//
//  JLPTN5AUDIOTEST.swift
//  JlptN5Test
//
//  Created by Jeamin on 7/31/24.
//

import SwiftUI
import AVFoundation


struct JLPTN5AUDIOTEST: View {
    @State private var currentIndex: Int = 0
    @State private var score: CGFloat = 0
    @State private var showScoreCard: Bool = false
    @State private var audioPlayer: AVAudioPlayer?
    @State private var isPlaying: Bool = false
    @State private var tappedAnswer: String = ""
    @State private var navigateToSelectAudioTest = false
    @Environment(\.dismiss) private var dismiss
    
    // 퀴즈 진행 상태를 저장하는 헬퍼 클래스
    let dbHelper = SQLiteHelper()
    let tableName = "JLPTN5AudioTest" // 테이블 이름 정의
    
    var onFinish: () -> ()

    var body: some View {
        VStack(spacing: 10) {
            Button {
                dismiss()
            } label: {
                Image(systemName: "xmark")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.red)
                
                Text("Exit")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.red)
            }
            .hAlign(.leading)
            
            Text("聴解")
                .font(.title)
                .fontWeight(.semibold)
                .hAlign(.center)
                .foregroundColor(.black)
            
            if !audioQuestions.isEmpty, audioQuestions.indices.contains(currentIndex) {
                           Text("Question \(currentIndex + 1)/\(audioQuestions.count)")
                               .font(.callout)
                               .foregroundColor(.gray)
                               .frame(maxWidth: .infinity, alignment: .center)
                       }
            
            
            if !audioQuestions.isEmpty, audioQuestions.indices.contains(currentIndex) {
                QuestionView(audioQuestion: audioQuestions[currentIndex], tappedAnswer: $tappedAnswer) { option in
                    guard tappedAnswer == "" else { return }
                    withAnimation(.easeInOut) {
                        tappedAnswer = option
                        
                        if audioQuestions[currentIndex].answer == option {
                            score += 1.0
                        }
                    }
                }
                .padding(.horizontal, -15)
                .padding(.vertical, 15)
            }
            
            CustomButton(title: currentIndex == (audioQuestions.count - 1) ? "End" : "Next Question") {
                // 오디오 정지
                audioPlayer?.stop()
                
                if currentIndex == (audioQuestions.count - 1) {
                    // 마지막 문제라면 SelectAudioTest로 이동
                    dbHelper.resetProgress(tableName: tableName) // 진행 상태 초기화
                    dismiss()
                    onFinish() // 추가 작업을 실행
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        navigateToSelectAudioTest = true
                    }
                } else {
                    // 다음 문제로 이동
                    withAnimation(.easeInOut) {
                        currentIndex += 1
                        tappedAnswer = "" // 선택한 답변 초기화
                        
                        // SQLite에 진행 상태 저장
                        dbHelper.saveProgress(tableName: tableName, currentIndex: currentIndex, score: score)
                    }
                }
            }
        }
        .padding(15)
        .hAlign(.center)
        .vAlign(.top)
        .background {
            Color.white
                .ignoresSafeArea()
        }
        .environment(\.colorScheme, .dark)
        .fullScreenCover(isPresented: $showScoreCard) {
            // ScoreCardView code goes here
            ScoreCardView(score: score / CGFloat(audioQuestions.count) * 100) {
                dismiss()
                onFinish()
            }
        }
        .onAppear {
            // 진행 상황 복원
            dbHelper.createTable(tableName: tableName)
            if let savedProgress = dbHelper.loadProgress(tableName: tableName) {
                currentIndex = savedProgress.0  // 저장된 문제 번호 복원
                score = savedProgress.1  // 저장된 점수 복원
            }
        }
    }
    
    struct PlayButtonView: View {
        var audioQuestion: AudioQuestion
        @Binding var isPlaying: Bool
        @Binding var audioPlayer: AVAudioPlayer?
        @State private var audioProgress: Double = 0.0
        
        var body: some View {
            VStack {
                // Audio progress bar
                Slider(value: Binding(
                    get: { audioProgress },
                    set: { newValue in
                        audioProgress = newValue
                    }
                ), in: 0...1, onEditingChanged: { editing in
                    if !editing {
                        if let player = audioPlayer {
                            player.currentTime = audioProgress * player.duration
                        }
                    }
                })
                .padding(.horizontal)
                
                HStack {
                    // Skip back 10 seconds button
                    Button(action: {
                        skipAudio(by: -10)
                    }) {
                        Image(systemName: "gobackward.10")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.blue)
                    }
                    
                    Spacer()
                    
                    // Play/Pause button
                    Button(action: {
                        toggleAudio(audioQuestion: audioQuestion)
                    }) {
                        Image(systemName: isPlaying ? "pause.circle.fill" : "play.circle.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.blue)
                    }
                    
                    Spacer()
                    
                    // Skip forward 10 seconds button
                    Button(action: {
                        skipAudio(by: 10)
                    }) {
                        Image(systemName: "goforward.10")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.blue)
                    }
                }
            }
            .onChange(of: audioQuestion.audioFile) {
                stopAudio()
                resetAudioProgress()
            }
            .onAppear {
                startAudioProgressTimer()
                resetAudioProgress() // Reset progress when view appears
                stopAudio() // 앱에 다시 들어왔을 때 오디오를 멈춤
                isPlaying = false // 재생 상태를 초기화
            }
            .onDisappear {
                saveAudioProgress()
                stopAudio()
            }
        }
        
        func toggleAudio(audioQuestion: AudioQuestion) {
            if isPlaying {
                audioPlayer?.pause()
            } else {
                if audioPlayer == nil {
                    playAudio(audioQuestion: audioQuestion)
                } else {
                    audioPlayer?.play()
                }
            }
            isPlaying.toggle()
        }
        
        func playAudio(audioQuestion: AudioQuestion) {
            stopAudio()
            
            if let url = Bundle.main.url(forResource: audioQuestion.audioFile, withExtension: "mp3") {
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: url)
                    audioPlayer?.prepareToPlay()
                    audioPlayer?.currentTime = audioQuestion.startTime
                    audioPlayer?.play()
                    
                    let endTime = audioQuestion.endTime
                    Timer.scheduledTimer(withTimeInterval: endTime! - audioQuestion.startTime, repeats: false) { _ in
                        stopAudio()
                        isPlaying = false
                    }
                } catch {
                    print("Error creating AVAudioPlayer: \(error)")
                }
            } else {
                print("Audio file not found.")
            }
        }
        
        func skipAudio(by seconds: TimeInterval) {
            guard let player = audioPlayer else { return }
            let newTime = player.currentTime + seconds
            if newTime >= 0 && newTime <= player.duration {
                player.currentTime = newTime
            }
        }
        
        func stopAudio() {
            audioPlayer?.stop()
            audioPlayer = nil
            isPlaying = false
        }
        
        func startAudioProgressTimer() {
            Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
                if let player = audioPlayer {
                    audioProgress = player.currentTime / (player.duration)
                }
            }
        }
        
        func resetAudioProgress() {
            audioProgress = 0.0
        }
        
        func saveAudioProgress() {
            if let player = audioPlayer {
                UserDefaults.standard.set(player.currentTime, forKey: "audioProgress")
            }
        }
        
        func loadAudioProgress() {
            if let savedProgress = UserDefaults.standard.value(forKey: "audioProgress") as? TimeInterval {
                audioPlayer?.currentTime = savedProgress
                audioProgress = savedProgress / (audioPlayer?.duration ?? 1)
            }
        }
    }
    
    
    struct QuestionView: View {
        var audioQuestion: AudioQuestion
        @Binding var tappedAnswer: String
        var onTap: (String) -> Void
        @State var isPlaying: Bool = false
        @State var audioPlayer: AVAudioPlayer?
        
        var body: some View {
            ScrollView {
                VStack(alignment: .leading, spacing: 15) {
                    if let question = audioQuestion.question {
                        Text(question)
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.bottom, 10)
                            .foregroundColor(.black)
                    }
                    
                    if let images = audioQuestion.images {
                        ForEach(images, id: \.self) { imageName in
                            Image(imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                    }
                    
                    // Only show PlayButtonView if there is an audio file
                    if audioQuestion.audioFile != nil {
                        HStack {
                            Spacer()
                            PlayButtonView(audioQuestion: audioQuestion, isPlaying: $isPlaying, audioPlayer: $audioPlayer)
                            Spacer()
                        }
                    }
                    
                    ForEach(audioQuestion.options, id: \.self) { option in
                        ZStack {
                            OptionView(option: option, tint: audioQuestion.answer == option && tappedAnswer != "" ? Color.green : Color.black)
                            
                            if tappedAnswer == option && tappedAnswer != audioQuestion.answer {
                                OptionView(option: option, tint: Color.red)
                            }
                        }
                        .contentShape(Rectangle())
                        .onTapGesture {
                            onTap(option)
                        }
                    }
                }
                .padding(.vertical, 10)
            }
            .padding(15)
            .hAlign(.center)
            .background {
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .fill(Color.white.opacity(0.6))
            }
            .padding(.horizontal, 15)
        }
    }

    
    struct OptionView: View {
        var option: String
        var tint: Color
        
        var body: some View {
            Text(option)
                .fixedSize(horizontal: false, vertical: true)
                .font(.title)
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
    }
}
