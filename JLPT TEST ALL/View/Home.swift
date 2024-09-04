//
//  Home.swift
//  JlptN5Test
//
//  Created by Jeamin on 7/31/24.
//

import SwiftUI


extension View{
    func hAlign(_ alignment: Alignment)->some View{
        self
            .frame(maxWidth: .infinity,alignment: alignment)
    }
    
    func vAlign(_ alignment: Alignment)->some View{
        self
            .frame(maxHeight: .infinity,alignment: alignment)
    }
}
