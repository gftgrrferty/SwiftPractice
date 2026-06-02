//
//  GrapeView.swift
//  Part4_StackView
//
//  Created by gftgrrferty on 2026/06/02.
//

import SwiftUI

struct GrapeView: View {
    var body: some View {
        VStack {
            Color.green.frame(width: 100, height: 20)
            Color.green.frame(width: 20, height: 50)
            HStack {
                Color.purple.frame(width: 60, height: 60)
                Color.purple.frame(width: 60, height: 60)
                Color.purple.frame(width: 60, height: 60)
                Color.purple.frame(width: 60, height: 60)
            }
            HStack {
                Color.purple.frame(width: 60, height: 60)
                Color.purple.frame(width: 60, height: 60)
                Color.purple.frame(width: 60, height: 60)
            }
            HStack {
                Color.purple.frame(width: 60, height: 60)
                Color.purple.frame(width: 60, height: 60)
            }
            HStack {
                Color.purple.frame(width: 60, height: 60)
            }
        }
    }
}

#Preview {
    GrapeView()
}
