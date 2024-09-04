//
//  ContentView.swift
//  JLPT TEST ALL
//
//  Created by Jeamin on 9/2/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            // N1 Tab
            NavigationView {
                JLPTN1SelectView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .tabItem {
                Image(systemName: "character.book.closed") // Different icon for N1
                Text("N1")
            }
            .tag(0)
            
            // N2 Tab
            NavigationView {
                JLPTN2SelectView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .tabItem {
                Image(systemName: "book.fill") // Different icon for N2
                Text("N2")
            }
            .tag(1)
            
            // N3 Tab
            NavigationView {
                JLPTN3SelectView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .tabItem {
                Image(systemName: "text.book.closed") // Different icon for N3
                Text("N3")
            }
            .tag(2)
           
            // N4 Tab
            NavigationView {
                JLPTN4SelectView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .tabItem {
                Image(systemName: "books.vertical") // Different icon for N4
                Text("N4")
            }
            .tag(3)
            
            // N5 Tab
            NavigationView {
                JLPTN5SelectView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .tabItem {
                Image(systemName: "book.circle") // Different icon for N5
                Text("N5")
            }
            .tag(4)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
