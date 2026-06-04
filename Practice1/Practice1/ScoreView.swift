//
//  ScoreView.swift
//  Practice1
//
//  Created by gftgrrferty on 2026/06/04.
//

import SwiftUI

struct ScoreView: View {
    let scoreText: String
    
    var body: some View {
        VStack {
            Spacer()
            Text(scoreText)
                .font(.system(size: 40).bold())
                .foregroundStyle(.originaYellow)
                .stroke(color: .originalGreen, width: 5)
//                .frame(maxHeight: .infinity)
            Spacer()
            Button  {
                let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
                windowScene?.windows.first?.rootViewController?.dismiss(animated: true)
            } label: {
                Image(.topButton)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .backgroundImage()
    }
}

#Preview {
    ScoreView(scoreText: "")
}
