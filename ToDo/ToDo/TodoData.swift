//
//  TodoData.swift
//  ToDo
//
//  Created by gftgrrferty on 2026/06/03.
//

import Foundation
// MARK: Codableは"json"でエンコードとデコードができる。とてもすごい!!
// MARK: Equatableは比較ができる
// MARK: Identifiableはidで識別できる
struct TodoData: Codable, Equatable, Identifiable {
    var id = UUID()
    var title: String = ""
    var completed: Bool = false
}
