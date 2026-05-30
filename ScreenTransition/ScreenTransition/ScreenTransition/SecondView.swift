//
//  SecondView.swift
//  ScreenTransition
//
//  Created by gftgrrferty on 2026/05/30.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            Text("Second View")
        }
    }
}

#Preview {
    SecondView()
}
