//
//  APICaller.swift
//  Trinity
//
//  Created by Adam Muhammad on 19/06/2024.
//

import Foundation

final class APICaller {
    static let shared = APICaller()
    
    // MARK: - Home
    
    public func getHomeInstance(completion: @escaping (Result<HomeModel, Error>) -> Void) {
        guard let url = Bundle.main.url(forResource: "data", withExtension: "json") else {
            print("json file not found")
            return
        }
        
        let data = try? Data(contentsOf: url)
        let json = try? JSONSerialization.jsonObject(with: data!)
        print(json)
//        let users = try? JSONDecoder().decode([HumanCategories], from: data!)
//        let response = HomeModel(success: true, message: "Successful", data: users!)
//        completion(.success(response))
        let response = HomeModel(
            success: true,
            message: "Successfully retreived data.",
            data: [
                HumanTest(
                    id: "5c8a80f52dfee238898d64cf",
                    firstName: "Phoebe",
                    lastName: "Monroe",
                    email: "phoebemonroe@furnafix.com",
                    dob: "3/2/1982"
                ),
                HumanTest(
                    id: "5c8a80f575270ddb54a18f86",
                    firstName: "Lidia",
                    lastName: "Wilkins",
                    email: "lidiawilkins@furnafix.com",
                    dob: "30/1/1962"
                ),
                HumanTest(
                    id: "5c8a80f57a27f272ab4272f9",
                    firstName: "Gertrude",
                    lastName: "Mccormick",
                    email: "gertrudemccormick@furnafix.com",
                    dob: nil
                ),
            ]
        )
        completion(.success(response))
    }
    
    // MARK: - Profile
    
//    public func getProfileInstance(completion: @escaping (Result<ProfileModel, Error>) -> Void) {
//        let response = ProfileModel(
//            success: true,
//            message: "Successfully retreived data.",
//            data: ProfileData(
//                id: 100,
//                first_name: "Khairul",
//                last_name: "Dzikri",
//                is_married: false,
//                age: nil,
//                birth_date: nil,
//                height: 185,
//                current_job: "Software Engineer",
//                university: nil,
//                course: nil
//            )
//        )
//        completion(.success(response))
//    }
}
