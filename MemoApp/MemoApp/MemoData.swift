//
//  MemoData.swift
//  MemoApp
//
//  Created by gftgrrferty on 2026/06/05.
//

import Foundation
struct MemoData: Identifiable, Equatable, Codable {
    var id = UUID()
    var title: String
    var body: ""
}
