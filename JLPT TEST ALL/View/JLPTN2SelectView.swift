//
//  SelectGrammarTest.swift
//  JlptN5Test
//
//  Created by Jeamin on 8/4/24.
//

import SwiftUI

struct JLPTN2SelectView: View {
    @State private var showJLPTN2: Bool = false
    @State private var showJLPTN2GrammarView: Bool = false
    @State private var showJLPTN2ReadingView: Bool = false
    @State private var showJLPTN2AUDIOTEST: Bool = false

    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width / 2  // Calculate half of the screen width
            let height = geometry.size.height / 2  // Calculate half of the screen height
            
            VStack(spacing: 0) {
                // First Row
                HStack(spacing: 0) {
                    Button(action: {
                        showJLPTN2.toggle()
                    }) {
                        Image("JLPTN5Image")
                            .resizable()
                            .scaledToFit()
                            .frame(width: width, height: height)
                            .clipped()
                    }
                    .fullScreenCover(isPresented: $showJLPTN2) {
                        JLPTN2(onFinish: {
                            showJLPTN2 = false
                        })
                    }
                    
                    Button(action: {
                        showJLPTN2GrammarView.toggle()
                    }) {
                        Image("JLPTN5GrammarImage")
                            .resizable()
                            .scaledToFit()
                            .frame(width: width, height: height)
                            .clipped()
                    }
                    .fullScreenCover(isPresented: $showJLPTN2GrammarView) {
                        JLPTN2GrammarView(onFinish: {
                            showJLPTN2GrammarView = false
                        })
                    }
                }
                
                // Second Row
                HStack(spacing: 0) {
                    Button(action: {
                        showJLPTN2ReadingView.toggle()
                    }) {
                        Image("JLPTN5ReadingImage")
                            .resizable()
                            .scaledToFit()
                            .frame(width: width, height: height)
                            .clipped()
                    }
                    .fullScreenCover(isPresented: $showJLPTN2ReadingView) {
                        JLPTN2ReadingView(onFinish: {
                            showJLPTN2ReadingView = false
                        })
                    }
                    
                    Button(action: {
                        showJLPTN2AUDIOTEST.toggle()
                    }) {
                        Image("JLPTN5AUDIOTESTImage")
                            .resizable()
                            .scaledToFit()
                            .frame(width: width, height: height)
                            .clipped()
                    }
                    .fullScreenCover(isPresented: $showJLPTN2AUDIOTEST) {
                        JLPTN2AUDIOTEST(onFinish: {
                            showJLPTN2AUDIOTEST = false
                        })
                    }
                }
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
}
