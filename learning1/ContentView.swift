//
//  ContentView.swift
//  learning1
//
//  Created by errorsteve on 2024/1/1.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                Text("Hello, world!").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                CardView()
            }
            CardView(isFaceUp: false)
            CardView()}
    }
}

struct CardView:View {
    var isFaceUp: Bool = true
    var body: some View {
        ZStack(content: {
            if isFaceUp{
                Text("你好").font(.system(size: 50)).foregroundColor(.green)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)
                //.foregroundColor(.white)
            }
            else{
                RoundedRectangle(cornerRadius: 12)
            }
        })
        .foregroundColor(.orange)
        .padding()
    }
}

#Preview {
    ContentView()
}
