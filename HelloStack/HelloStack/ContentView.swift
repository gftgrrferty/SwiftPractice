//
//  ContentView.swift
//  HelloStack
//
//  Created by gftgrrferty on 2026/05/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //MARK: - ZStack,VStack,HStackとかでミニオンを作成(難しかった)
        VStack {
            ZStack {
                Rectangle()
                    .foregroundStyle(.yellow)
                    .frame(width: 300, height: 300)
                VStack {
                    HStack {
                        Rectangle()
                            .foregroundStyle(.black)
                            .frame(width: 60, height: 20)
                        ZStack {
                            Rectangle()
                                .foregroundStyle(.gray)
                                .frame(width: 90, height: 90)
                            Rectangle()
                                .foregroundStyle(.white)
                                .frame(width: 70, height: 70)
                            Rectangle()
                                .foregroundStyle(.black)
                                .frame(width: 20, height: 20)
                        }
                        ZStack {
                            Rectangle()
                                .foregroundStyle(.gray)
                                .frame(width: 90, height: 90)
                            Rectangle()
                                .foregroundStyle(.white)
                                .frame(width: 70, height: 70)
                            Rectangle()
                                .foregroundStyle(.black)
                                .frame(width: 20, height: 20)
                        }
                        Rectangle()
                            .foregroundStyle(.black)
                            .frame(width: 60, height: 20)
                    }
                    ZStack {
                        Rectangle()
                            .foregroundStyle(.black)
                            .frame(width:70, height: 40)
                        VStack {
                            Rectangle()
                                .foregroundStyle(.white)
                                .frame(width: 60, height: 10)
                            Rectangle()
                                .foregroundStyle(.red)
                                .frame(width: 60, height: 10)
                        }
                    }
                }
            }
            Rectangle()
                .foregroundStyle(.blue)
                .frame(width: 300, height: 100)
            HStack {
                Rectangle()
                    .foregroundStyle(.black)
                    .frame(width: 70, height: 30)
                Rectangle()
                    .foregroundStyle(.black)
                    .frame(width: 70, height: 30)
            }
        }
        // MARK: - ZStack,VStack,HStackを使ってクリーパーを作成
//        ZStack {
//            Rectangle()
//                .foregroundStyle(.green)
//                .frame(width: 300, height: 300)
//            VStack {
//                HStack {
//                    Rectangle()
//                        .foregroundStyle(.black)
//                        .frame(width: 70, height: 70)
//                    Rectangle()
//                        .foregroundStyle(.black)
//                        .frame(width: 70, height: 70)
//                }
//                Rectangle()
//                    .foregroundStyle(.black)
//                    .frame(width: 50, height: 20)
//                Rectangle()
//                    .foregroundStyle(.black)
//                    .frame(width: 100, height: 80)
//            }
//        }
        // MARK: - VStackでハンバーガーを作成
//        VStack {
//            Rectangle()
//                .foregroundStyle(.orange)
//                .frame(width: 200, height: 50)
//            Rectangle()
//                .foregroundStyle(.red)
//                .frame(width: 180, height: 20)
//            Rectangle()
//                .foregroundStyle(.yellow)
//                .frame(width: 180, height: 20)
//            Rectangle()
//                .foregroundStyle(.brown)
//                .frame(width: 180, height: 20)
//            Rectangle()
//                .foregroundStyle(.green)
//                .frame(width: 180, height: 20)
//            Rectangle()
//                .foregroundStyle(.orange)
//                .frame(width: 200, height: 50)
//        }
    }
}

#Preview {
    ContentView()
}
