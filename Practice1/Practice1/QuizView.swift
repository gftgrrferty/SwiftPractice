//
//  Quiz.swift
//  Practice1
//
//  Created by gftgrrferty on 2026/06/04.
//

import SwiftUI

struct QuizItem {
    // 問題文は文字列だからString型
    let question: String // let = 定数
    // 選択肢は複数の文字列から構成されてるからStringの配列
    var choices: [String] // var = 変数
    // 答えは１つだからString型
    var correctAnswer: String
}

struct QuizView: View {
    @State var isShowingScoreView = false
    @State var isShowingResultSymbol = false
    @State var isAnswerCorrect = false
    @State var currentQuizIndex = 0
    @State var currectCount = 0
    
    let quizItems = [
        // 0
        QuizItem(
            question:"次のうち、世界で最も速く走る動物はどれですか？",
            choices: ["ライオン", "ウサイン・ボルト", "チーター", "ウマ"],
            correctAnswer: "チーター"
        ),
        // 1
        QuizItem(
            question: "次のうち、飛ぶことができない鳥はどれですか？",
            choices: ["ペンギン", "フクロウ", "ハト", "スズメ"],
            correctAnswer:"ペンギン"
        ),
        // 2
        QuizItem(
            question: "次のうち、哺乳類ではない動物はどれですか？",
            choices: ["イルカ", "カメ", "コウモリ", "ヒト"],
            correctAnswer:"カメ"
        ),
        // 3
        QuizItem(
            question: "次のうち、夜行性ではない動物はどれですか？",
            choices: ["ライオン", "コアラ", "ゾウ", "フクロウ"],
            correctAnswer:"ゾウ"
        ),
        // 4
        QuizItem(
            question: "次のうち、最も長い首を持つ動物はどれですか？",
            choices: ["キリン", "アルパカ", "ゾウ", "ウマ"],
            correctAnswer:"キリン"
        )
    ]
    
    var body: some View {
        ZStack{
            VStack {
                // quizItems.countとかくと配列の要素の数が表示されるそうすると問題を増やしても問題ない
                Text("問題番号 \(currentQuizIndex + 1)/\(quizItems.count)")
                    .font(.headline)
                    .padding(10)
                    .background(Color.originalGreen)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                // quesItemsから取得して[0]と書くと1番目の問題が出てくる(0~4)で5個
                Text(quizItems[currentQuizIndex].question)
                    .font(.title)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.originalLightGreen)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.originalGreen, lineWidth: 5)
                    )
                // 縦フレームを最大サイズに設定
                    .frame(maxHeight: .infinity)
                // 繰り返し
                ForEach(quizItems[currentQuizIndex].choices, id: \.self) {choices in
                    Button {
                        // 押した選択肢を表示する
                        print("\(choices)選択しました")
                        print("正解は\(quizItems[currentQuizIndex].correctAnswer)です")
                        
                        if choices == quizItems[currentQuizIndex].correctAnswer {
                            print("正解です")
                            isAnswerCorrect = true
                            // 正解数
                            currectCount += 1
                        } else {
                            print("不正解です")
                            isAnswerCorrect = false
                        }
                        // まるばつを表示
                        isShowingResultSymbol = true
                        // 今から+1秒後に"isShowingResultSymbol = false"が実行される
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                            isShowingResultSymbol = false
                            // ここで最後の問題だったらスコア画面を表示する
                            if currentQuizIndex + 1 >= quizItems.count {
                                isShowingScoreView = true
                                // スコア画面が表示されたらこれ以降の処理を行わない
                                return
                            }
                            // マルか、バツの表示が終わったらcurrentQuizIndexに+1される
                            currentQuizIndex += 1 // +=がインクリメント -=がデクリメント
                        }
                    // ボタンの見た目
                    } label: {
                        Text(choices)
                            .font(.title.bold())
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.originalSkin)
                            .foregroundStyle(Color.originalBrown)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                    // ScoreViewを表示する
                    .fullScreenCover(isPresented: $isShowingScoreView) {
                        ScoreView(scoreText: "\(quizItems.count)問中\(currectCount)問正解")
                    }
                }
            } // VStack
            .padding()
            
            if isShowingResultSymbol {
                // isAnswerCorrectが"?"(true)だった場合"○"そうでなかった場合"×"を表示
                Text(isAnswerCorrect ? "○" : "×")
                // 丸の大きさ
                    .font(.system(size: 1000))
                // 画面のサイズに応じてテキストを縮小 1000以下100以上
                    .minimumScaleFactor(0.1)
                // 文字の色を赤色にしている
                    .foregroundStyle(isAnswerCorrect ? .green : .red)
                // 必ず１行で表示するようにしている
                    .lineLimit(1)
                // 背景の高さと幅を最大にすることで背景が全体に表示される
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                // 背景色を0.5倍で透過している 本来はジオめとりリーダーを使った方がいいかも?
                    .background(Color.black.opacity(0.5))
            }
        }
        .backgroundImage()
    }
}

#Preview {
    QuizView()
}
