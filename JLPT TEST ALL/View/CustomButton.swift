//
//  CustomButton.swift
//  JlptN5Test
//
//  Created by Jeamin on 7/31/24.
//

import SwiftUI

struct CustomButton: View{
    var title: String
    var onClick: ()->()
    
    var body: some View{
        Button {
           onClick()
        } label: {
            Text(title)
                .font(.title3)
                .fontWeight(.semibold)
                .hAlign(.center)
                .padding(.top,15)
                .padding(.bottom,10)
                .foregroundColor(.green)
        }
        .padding([.bottom,.horizontal],-15)
        
    }
}

#Preview {
    ContentView()
}
