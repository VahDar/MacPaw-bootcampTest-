//
//  ContentView.swift
//  MacPaw-Test
//
//  Created by Vakhtang on 25.08.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showReversedList: Bool = false
    
    var body: some View {
        NavigationView {
            ListLayout(showReversedList: $showReversedList)
                .navigationTitle("Russian losses")
                .toolbarBackground(
                    Color.yellow.opacity(0.4),
                    for: .navigationBar
                )
                .toolbar {
                    ToolbarItem(
                        placement: .navigationBarTrailing) {
                        Button(action: {
                            showReversedList.toggle()
                        }, label: {
                            Image(systemName: showReversedList ? "arrow.down" : "arrow.up")
                                .imageScale(.large)
                                .foregroundColor(.black)
                    })
                }
            }
        }
        .accentColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
