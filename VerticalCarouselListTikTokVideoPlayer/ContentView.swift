//
//  ContentView.swift
//  VerticalCarouselListTikTokVideoPlayer
//
//  Created by ramil on 10.08.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Home()
                .preferredColorScheme(.dark)
                .navigationTitle("")
                .navigationBarHidden(true)
        }
    }
}

struct Home: View {
    @State var index = 0
    var edges = UIApplication.shared.windows.first?.safeAreaInsets
    
    var body: some View {
        TabView(selection: $index) {
            ForEach(1...10, id: \.self) { i in
                ZStack {
                    Color(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1))
                    Text("SwiftUI")
                }
                .padding()
                .rotationEffect(.init(degrees: -90))
                //setting with
                .frame(width: UIScreen.main.bounds.width)
                
            }
        }
        // simple logic
        .rotationEffect(.init(degrees: 90))
        // if view is rotated means width will be equal to height...
        .frame(width: UIScreen.main.bounds.height - (edges!.top + edges!.bottom))
        
        
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .background(Color.black.ignoresSafeArea(.all, edges: .all))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
