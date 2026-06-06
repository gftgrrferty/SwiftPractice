//
//  Memo.swift
//  Practice4
//
//  Created by gftgrrferty on 2026/06/07.
//

import Foundation
struct Memo: Identifiable, Codable {
    var id = UUID()
    var title = ""
    var body = ""
}
