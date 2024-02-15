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
            CardView()
            CardView(isFaceUp: false)
            CardView()}
    }
}

struct CardView:View {
    var base: RoundedRectangle = RoundedRectangle(cornerRadius: 12)
    //let base = Circle()
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack(content: {
            if isFaceUp{
                base.foregroundColor(.white)
                Text("你好").font(.system(size: 30)).foregroundColor(.green)
                base.strokeBorder(lineWidth: 2)
                //.foregroundColor(.white)
            }
            else{
                base
                VStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundColor(.white)
                    Text("Hello, world!").foregroundColor(.white)
                }
            }
        })
        .foregroundColor(.orange)
        .padding()
        .onTapGesture {
            print("tapped")
            isFaceUp = !isFaceUp
        }
    }
}

#Preview {
    ContentView()
}
