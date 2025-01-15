//
//  ContentView.swift
//  work
//
//  Created by Shreya Prasad on 15/01/25.
//

import SwiftUI

struct ContentView: View {
    private let pasteboard = UIPasteboard.general
    var appleUrl = "https://www.apple.com"
    var sugarURL = "https://www.sugarcosmetics.com"
    var nikeURL = "https://www.nike.com/in/"
    var amazonURL = "https://www.amazon.in/"
    var body: some View {
        VStack {
            Text("Apple")
                .font(.largeTitle)
            Link("Apple", destination: URL(string: "https://www.apple.com")!)
                .onTapGesture(count: 2) {
                    pasteboard.string = self.appleUrl
                    print("pasted apple")
                }

                .font(.title)
            
            
            Spacer()
            Text("Sugar")
                .font(.largeTitle)
            Link("Sugar", destination: URL(string: "https://www.sugarcosmetics.com")!)
                .onTapGesture(count: 2) {
                    pasteboard.string = self.sugarURL
                    print("pasted sugar")
                }

                .font(.largeTitle)
            Spacer()
            Text("Nike")
                .font(.largeTitle)
            Link("Nike", destination: URL(string:"https://www.nike.com/in/")!)
                .onTapGesture(count: 2) {
                    pasteboard.string = self.nikeURL
                    print("pasted nike")
                }

                .font(.title)
            Spacer()
            Text("Amazon")
                .font(.largeTitle)
            Link("Amazon", destination: URL(string: "https://www.amazon.in/")!)
                .onTapGesture(count: 2) {
                    pasteboard.string = self.amazonURL
                    print("pasted amazon")
                }
                .font(.title)
        }.frame(width: 300,height: 500)
            .padding()
    }
        
        
    
}
#Preview {
    ContentView()
}
