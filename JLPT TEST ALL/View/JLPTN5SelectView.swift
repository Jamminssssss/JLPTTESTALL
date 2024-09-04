//
//  JLPTN5SelectView.swift
//  JLPT TEST ALL
//
//  Created by Jeamin on 9/3/24.
//

import SwiftUI

struct JLPTN5SelectView: View {
    @State private var showJLPTN5: Bool = false
    @State private var showJLPTN5GrammarView: Bool = false
    @State private var showJLPTN5ReadingView: Bool = false
    @State private var showJLPTN5AUDIOTEST: Bool = false

    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width / 2  // Calculate half of the screen width
            let height = geometry.size.height / 2  // Calculate half of the screen height
            
            VStack(spacing: 0) {
                // First Row
                HStack(spacing: 0) {
                    Button(action: {
                        showJLPTN5.toggle()
                    }) {
                        Image("JLPTN5Image")
                            .resizable()
                            .scaledToFit()
                            .frame(width: width, height: height)
                            .clipped()
                    }
                    .fullScreenCover(isPresented: $showJLPTN5) {
                        JLPTN5(onFinish: {
                            showJLPTN5 = false
                        })
                    }
                    
                    Button(action: {
                        showJLPTN5GrammarView.toggle()
                    }) {
                        Image("JLPTN5GrammarImage")
                            .resizable()
                            .scaledToFit()
                            .frame(width: width, height: height)
                            .clipped()
                    }
                    .fullScreenCover(isPresented: $showJLPTN5GrammarView) {
                        JLPTN5GrammarView(onFinish: {
                            showJLPTN5GrammarView = false
                        })
                    }
                }
                
                // Second Row
                HStack(spacing: 0) {
                    Button(action: {
                        showJLPTN5ReadingView.toggle()
                    }) {
                        Image("JLPTN5ReadingImage")
                            .resizable()
                            .scaledToFit()
                            .frame(width: width, height: height)
                            .clipped()
                    }
                    .fullScreenCover(isPresented: $showJLPTN5ReadingView) {
                        JLPTN5ReadingView(onFinish: {
                            showJLPTN5ReadingView = false
                        })
                    }
                    
                    Button(action: {
                        showJLPTN5AUDIOTEST.toggle()
                    }) {
                        Image("JLPTN5AUDIOTESTImage")
                            .resizable()
                            .scaledToFit()
                            .frame(width: width, height: height)
                            .clipped()
                    }
                    .fullScreenCover(isPresented: $showJLPTN5AUDIOTEST) {
                        JLPTN5AUDIOTEST(onFinish: {
                            showJLPTN5AUDIOTEST = false
                        })
                    }
                }
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
}
