//
//  SelectAudioTest.swift
//  JlptN5Test
//
//  Created by Jeamin on 7/31/24.
//

import SwiftUI

struct JLPTN4SelectView: View {
    @State private var showJLPTN4: Bool = false
    @State private var showJLPTN4GrammarView: Bool = false
    @State private var showJLPTN4ReadingView: Bool = false
    @State private var showJLPTN4AUDIOTEST: Bool = false

    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width / 2  // Calculate half of the screen width
            let height = geometry.size.height / 2  // Calculate half of the screen height
            
            VStack(spacing: 0) {
                // First Row
                HStack(spacing: 0) {
                    Button(action: {
                        showJLPTN4.toggle()
                    }) {
                        Image("JLPTN5Image")
                            .resizable()
                            .scaledToFit()
                            .frame(width: width, height: height)
                            .clipped()
                    }
                    .fullScreenCover(isPresented: $showJLPTN4) {
                        JLPTN4(onFinish: {
                            showJLPTN4 = false
                        })
                    }
                    
                    Button(action: {
                        showJLPTN4GrammarView.toggle()
                    }) {
                        Image("JLPTN5GrammarImage")
                            .resizable()
                            .scaledToFit()
                            .frame(width: width, height: height)
                            .clipped()
                    }
                    .fullScreenCover(isPresented: $showJLPTN4GrammarView) {
                        JLPTN4GrammarView(onFinish: {
                            showJLPTN4GrammarView = false
                        })
                    }
                }
                
                // Second Row
                HStack(spacing: 0) {
                    Button(action: {
                        showJLPTN4ReadingView.toggle()
                    }) {
                        Image("JLPTN5ReadingImage")
                            .resizable()
                            .scaledToFit()
                            .frame(width: width, height: height)
                            .clipped()
                    }
                    .fullScreenCover(isPresented: $showJLPTN4ReadingView) {
                        JLPTN4ReadingView(onFinish: {
                            showJLPTN4ReadingView = false
                        })
                    }
                    
                    Button(action: {
                        showJLPTN4AUDIOTEST.toggle()
                    }) {
                        Image("JLPTN5AUDIOTESTImage")
                            .resizable()
                            .scaledToFit()
                            .frame(width: width, height: height)
                            .clipped()
                    }
                    .fullScreenCover(isPresented: $showJLPTN4AUDIOTEST) {
                        JLPTN4AUDIOTEST(onFinish: {
                            showJLPTN4AUDIOTEST = false
                        })
                    }
                }
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
}
