//
//  ContentView.swift
//  Practice3
//
//  Created by gftgrrferty on 2026/06/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.blue.frame(width: 300, height: 300)
            VStack {
                HStack {
                    ZStack {
                        Color.white.frame(width: 50, height: 80)
                        Color.black.frame(width: 20, height: 20)
                    }
                    ZStack {
                        Color.white.frame(width: 50, height: 80)
                        Color.black.frame(width: 20, height: 20)
                    }
                }
                ZStack {
                    Color.white.frame(width: 250, height: 200)
                    HStack {
                        VStack {
                            Color.black.frame(width: 100, height: 10)
                            Color.black.frame(width: 100, height: 10)
                            Color.black.frame(width: 100, height: 10)
                        }
                        VStack {
                            Color.red.frame(width: 30, height: 30)
                            Color.red.frame(width: 100, height: 90)
                        }
                        VStack {
                            Color.black.frame(width: 100, height: 10)
                            Color.black.frame(width: 100, height: 10)
                            Color.black.frame(width: 100, height: 10)
                        }
                    }
                }
            }
        }
    }
}
    
    #Preview {
        ContentView()
    }
