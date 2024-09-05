//
//  Select.swift
//  JlptN5Test
//
//  Created by Jeamin on 7/31/24.
//

import SwiftUI

struct JLPTN1SelectView: View {
    @State private var showJLPTN1: Bool = false
    @State private var showJLPTN1GrammarView: Bool = false
    @State private var showJLPTN1ReadingView: Bool = false
    @State private var showJLPTN1AUDIOTEST: Bool = false

    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width / 2  // Calculate half of the screen width
            let height = geometry.size.height / 2  // Calculate half of the screen height
            
            VStack(spacing: 0) {
                // First Row
                HStack(spacing: 0) {
                    Button(action: {
                        showJLPTN1.toggle()
                    }) {
                        Image("JLPTN5Image")
                            .resizable()
                            .scaledToFit()
                            .frame(width: width, height: height)
                            .clipped()
                    }
                    .fullScreenCover(isPresented: $showJLPTN1) {
                        JLPTN1(onFinish: {
                            showJLPTN1 = false
                        })
                    }
                    
                    Button(action: {
                        showJLPTN1GrammarView.toggle()
                    }) {
                        Image("JLPTN5GrammarImage")
                            .resizable()
                            .scaledToFit()
                            .frame(width: width, height: height)
                            .clipped()
                    }
                    .fullScreenCover(isPresented: $showJLPTN1GrammarView) {
                        JLPTN1GrammarView(onFinish: {
                            showJLPTN1GrammarView = false
                        })
                    }
                }
                
                // Second Row
                HStack(spacing: 0) {
                    Button(action: {
                        showJLPTN1ReadingView.toggle()
                    }) {
                        Image("JLPTN5ReadingImage")
                            .resizable()
                            .scaledToFit()
                            .frame(width: width, height: height)
                            .clipped()
                    }
                    .fullScreenCover(isPresented: $showJLPTN1ReadingView) {
                        JLPTN1ReadingView(onFinish: {
                            showJLPTN1ReadingView = false
                        })
                    }
                    
                    Button(action: {
                        showJLPTN1AUDIOTEST.toggle()
                    }) {
                        Image("JLPTN5AUDIOTESTImage")
                            .resizable()
                            .scaledToFit()
                            .frame(width: width, height: height)
                            .clipped()
                    }
                    .fullScreenCover(isPresented: $showJLPTN1AUDIOTEST) {
                        JLPTN1AUDIOTEST(onFinish: {
                            showJLPTN1AUDIOTEST = false
                        })
                    }
                }
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
}
