//
//  CatBotView.swift
//  Part4_StackView
//
//  Created by gftgrrferty on 2026/06/02.
//

import SwiftUI

struct CatBotView: View {
    var body: some View {
        // 顔全体
        ZStack {
            Color.blue.frame(width: 300, height: 300)
            VStack {
                // 目の部分
                HStack {
                    // 左目
                    ZStack {
                        // 白目
                        Color.white.frame(width: 50, height: 80)
                        // 黒目
                        Color.black.frame(width: 20, height: 20)
                    }
                    // 右目
                    ZStack {
                        // 白目
                        Color.white.frame(width: 50, height: 80)
                        // 黒目
                        Color.black.frame(width: 20, height: 20)
                    }
                }
                // 顔の白い部分
                ZStack {
                    Color.white.frame(width: 250, height: 200)
                    HStack {
                        // 左ねこひげ
                        VStack {
                            Color.black.frame(width: 100, height: 10)
                            Color.black.frame(width: 100, height: 10)
                            Color.black.frame(width: 100, height: 10)
                        }
                        // 口
                        VStack {
                            Color.red.frame(width: 30, height: 30)
                            Color.red.frame(width: 100, height: 90)
                        }
                        // 右ねこひげ
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
    CatBotView()
}
