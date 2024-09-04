//
//  SelectReadingTest.swift
//  JlptN5Test
//
//  Created by Jeamin on 8/5/24.
//

import SwiftUI

struct JLPTN3SelectView: View {
        @State private var showJLPTN3: Bool = false
        @State private var showJLPTN3GrammarView: Bool = false
        @State private var showJLPTN3ReadingView: Bool = false
        @State private var showJLPTN3AUDIOTEST: Bool = false

        var body: some View {
            GeometryReader { geometry in
                let width = geometry.size.width / 2  // Calculate half of the screen width
                let height = geometry.size.height / 2  // Calculate half of the screen height
                
                VStack(spacing: 0) {
                    // First Row
                    HStack(spacing: 0) {
                        Button(action: {
                            showJLPTN3.toggle()
                        }) {
                            Image("JLPTN5Image")
                                .resizable()
                                .scaledToFit()
                                .frame(width: width, height: height)
                                .clipped()
                        }
                        .fullScreenCover(isPresented: $showJLPTN3) {
                            JLPTN3(onFinish: {
                                showJLPTN3 = false
                            })
                        }
                        
                        Button(action: {
                            showJLPTN3GrammarView.toggle()
                        }) {
                            Image("JLPTN5GrammarImage")
                                .resizable()
                                .scaledToFit()
                                .frame(width: width, height: height)
                                .clipped()
                        }
                        .fullScreenCover(isPresented: $showJLPTN3GrammarView) {
                            JLPTN3GrammarView(onFinish: {
                                showJLPTN3GrammarView = false
                            })
                        }
                    }
                    
                    // Second Row
                    HStack(spacing: 0) {
                        Button(action: {
                            showJLPTN3ReadingView.toggle()
                        }) {
                            Image("JLPTN5ReadingImage")
                                .resizable()
                                .scaledToFit()
                                .frame(width: width, height: height)
                                .clipped()
                        }
                        .fullScreenCover(isPresented: $showJLPTN3ReadingView) {
                            JLPTN3ReadingView(onFinish: {
                                showJLPTN3ReadingView = false
                            })
                        }
                        
                        Button(action: {
                            showJLPTN3AUDIOTEST.toggle()
                        }) {
                            Image("JLPTN5AUDIOTESTImage")
                                .resizable()
                                .scaledToFit()
                                .frame(width: width, height: height)
                                .clipped()
                        }
                        .fullScreenCover(isPresented: $showJLPTN3AUDIOTEST) {
                            JLPTN3AUDIOTEST(onFinish: {
                                showJLPTN3AUDIOTEST = false
                            })
                        }
                    }
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
            }
        }
    }
