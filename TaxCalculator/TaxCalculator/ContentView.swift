//
//  ContentView.swift
//  TaxCalculator
//
//  Created by gftgrrferty on 2026/05/30.
//

import SwiftUI

struct ContentView: View {
    @State var inputText = ""
    //MARK: 少数を代入することによって小数をが入る箱
//    @State var tax8 = 0.0
//    @State var tax10 = 0.0
    var body: some View {
        VStack(spacing:20) {
            TextField("ここに文字を入力", text:$inputText)
                .keyboardType(.numberPad)
//            MARK: 変更前
//            Button("計算") {
////          MARK: ?? 0で数値以外だが入力されたら0が代用される
//                tax8 = (Double(inputText) ?? 0) * 0.08
//                tax10 = (Double(inputText) ?? 0) * 0.1
//            }
//            MARK: 変更後:数値を入力したら直接計算して出力する
            Text("価格:  \(inputText)")
            Text("消費税8%: \((Double(inputText) ?? 0) * 0.08)")
            Text("消費税10%: \((Double(inputText) ?? 0) * 0.1)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
