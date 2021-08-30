//
//  Models.swift
//  Authorization_App
//
//  Created by Константин Кириллов on 30.08.2021.
//

//import Foundation
struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserInfo() -> User {
        User(
            login: "KirillOff",
            password: "123",
            person: Person(
                firstName: "Konstantin",
                lastName: "Kirillov",
                age: 36,
                gender: .male,
                programmLanguages: ["1C", "JavaScript", "Swift"]))
    }
    
}

struct Person {
    let firstName: String
    let lastName: String
    let age: Int
    let gender: Gender
    let programmLanguages: [String]
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
}

enum Gender: String {
    case male = "Мужской"
    case female = "Женский"
}

