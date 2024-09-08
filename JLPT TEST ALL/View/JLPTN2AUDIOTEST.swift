//
//  JLPTN3AUDIOTEST.swift
//  JlptN3Test
//
//  Created by Jeamin on 8/14/24.
//

import SwiftUI
import AVFoundation

struct JLPTN2AUDIOTEST: View {
    @State private var currentIndex: Int = 0
    @State private var score: CGFloat = 0
    @State private var showScoreCard: Bool = false
    @State private var progress: CGFloat = 0
    @State private var progressString: String = "0%"
    @State private var audioPlayer: AVAudioPlayer?
    @State private var isPlaying: Bool = false
    @State private var tappedAnswer: String = ""
    @State private var navigateToSelectAudioTest = false
    @Environment(\.dismiss) private var dismiss
    
    var onFinish: () -> ()
    
    var body: some View {
        VStack(spacing: 10) {
            AdBannerView(adUnitID: "ca-app-pub-9940677842340433/8081727159")
                .frame(width: 320, height: 50)
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
            .padding(.top, 5)
            
            if !JLPTN2AUDIOTESTaudioQuestions.isEmpty, JLPTN2AUDIOTESTaudioQuestions.indices.contains(currentIndex) {
                QuestionView(audioQuestion: JLPTN2AUDIOTESTaudioQuestions[currentIndex], tappedAnswer: $tappedAnswer) { option in
                    guard tappedAnswer == "" else { return }
                    withAnimation(.easeInOut) {
                        tappedAnswer = option
                        
                        if JLPTN2AUDIOTESTaudioQuestions[currentIndex].answer == option {
                            score += 1.0
                        }
                    }
                }
                .padding(.horizontal, -15)
                .padding(.vertical, 15)
            }
            
            CustomButton(title: currentIndex == (JLPTN2AUDIOTESTaudioQuestions.count - 1) ? "End" : "Next Question") {
                // 오디오 정지
                audioPlayer?.stop()
                
                if currentIndex == (JLPTN2AUDIOTESTaudioQuestions.count - 1) {
                    // 마지막 문제라면 SelectAudioTest로 이동
                    dismiss() // 현재 화면을 닫습니다
                    onFinish() // 추가 작업을 실행합니다
                    
                    // SelectAudioTest로 이동하는 코드 추가
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        // 'dismiss()' 호출 후 잠시 기다린 다음 SelectAudioTest 화면으로 이동
                        navigateToSelectAudioTest = true
                    }
                } else {
                    // 다음 문제로 이동
                    withAnimation(.easeInOut) {
                        currentIndex += 1
                        progress = CGFloat(currentIndex) / CGFloat(JLPTN2AUDIOTESTaudioQuestions.count - 1)
                        progressString = String(format: "%.0f%%", progress * 100)
                        tappedAnswer = "" // 선택한 답변 초기화
                    }
                }
            }
            Spacer()
            AdBannerView(adUnitID: "ca-app-pub-9940677842340433/6768645481")
                .frame(width: 320, height: 50)
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
            ScoreCardView(score: score / CGFloat(JLPTN2AUDIOTESTaudioQuestions.count) * 100) {
                dismiss()
                onFinish()
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
