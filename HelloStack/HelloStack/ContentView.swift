//
//  ContentView.swift
//  HelloStack
//
//  Created by gftgrrferty on 2026/05/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Rectangle()
                .foregroundStyle(.orange)
                .frame(width: 200, height: 50)
            Rectangle()
                .foregroundStyle(.red)
                .frame(width: 180, height: 20)
            Rectangle()
                .foregroundStyle(.yellow)
                .frame(width: 180, height: 20)
            Rectangle()
                .foregroundStyle(.brown)
                .frame(width: 180, height: 20)
            Rectangle()
                .foregroundStyle(.green)
                .frame(width: 180, height: 20)
            Rectangle()
                .foregroundStyle(.orange)
                .frame(width: 200, height: 50)
        }
    }
}

#Preview {
    ContentView()
}
