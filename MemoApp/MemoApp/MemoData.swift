//
//  MemoData.swift
//  MemoApp
//
//  Created by gftgrrferty on 2026/06/05.
//

import Foundation

struct Memo: Identifiable, Codable, Equatable {
    var id = UUID()
    var title: String = ""
    var body: String = ""
}

