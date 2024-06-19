//
//  HomeModel.swift
//  Trinity
//
//  Created by Adam Muhammad on 19/06/2024.
//

import Foundation

struct HomeModel: Codable {
    let success: Bool
    let message: String
//    let data: [HumanCategories]
    let data: [HumanTest]
}

struct HumanCategories: Codable, Identifiable {
    
    enum CodingKeys: CodingKey {
        case firstName
        case lastName
        case email
        case dob
    }
    
    var id = UUID()
    var firstName: String
    var lastName: String
    var email: String
    var dob: String?
}

struct HumanTest: Codable {
    
    var id: String
    var firstName: String
    var lastName: String
    var email: String
    var dob: String?
}
