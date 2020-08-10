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
    
    var body: some View {
        TabView(selection: $index) {
            ForEach(1...10, id: \.self) { i in
                Color.red
                    .padding()
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .background(Color.black.ignoresSafeArea(.all, edges: .all))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
