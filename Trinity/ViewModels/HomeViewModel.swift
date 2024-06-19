//
//  HomeViewModel.swift
//  Trinity
//
//  Created by Adam Muhammad on 19/06/2024.
//

import Foundation

struct HomeViewModel: Codable {
//    var id = UUID()
    var id: String
    let fullName: String
    
//    init(category: HumanCategories) {
    init(category: HumanTest) {
        self.id = category.id
        self.fullName = "\(category.firstName) \(category.lastName)"
    }
}
