//
//  PostView.swift
//  Part4_StackView
//
//  Created by gftgrrferty on 2026/06/02.
//

import SwiftUI

struct PostView: View {
    var body: some View {
        VStack {
            ZStack {
                Color.red.frame(width: 280, height: 300)
                VStack {
                    HStack {
                        ZStack {
                            Color.gray.frame(width: 120, height: 100)
                            Color.black.frame(width: 100, height: 30)
                        }
                        ZStack {
                            Color.gray.frame(width: 120, height: 100)
                            Color.black.frame(width: 100, height: 30)
                        }
                    }
                    Color.white.frame(width: 80, height: 10)
                    Color.white.frame(width: 100, height: 10)
                    Color.white.frame(width: 10, height: 50)
                }
            }
            Color.red.frame(width: 30, height: 100)
            Color.gray.frame(width: 200, height: 30)
        }
    }
}

#Preview {
    PostView()
}
