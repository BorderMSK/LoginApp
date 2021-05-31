//
//  User.swift
//  LoginApp
//
//  Created by Igor Makeev on 30.05.2021.
//

import UIKit

struct User {
    
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(
            login: "1",
            password: "1",
            person: Person.getPerson()
        )
    }
}
struct Person {
    
    let name: String
    let surname: String
    let image: UIImage
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Игорь",
            surname: "Макеев",
            image: #imageLiteral(resourceName: "foto"))
    }
}

struct PersonalInformation {
    let education: String
    let born: String
    let job: String
    let socialMedia: String
    let live: String
    
    static func getPersonalInformation() -> PersonalInformation {
        PersonalInformation(
            education: "Moscow Power Engineering Institute",
            born: "07.06.1990",
            job: "Engineer",
            socialMedia: "instagram.com/mie_msk",
            live: "Moscow")
    }
}

struct Hobbies {
    let music: String
    let tea: String
    let journey: String
    let it: String
    
    
    static func getHobbies() -> Hobbies{
        Hobbies(
            music: "Люблю музыку. Люблю слушать, люблю ходить на концерты. Предпочитаю жанр Rock музыки",
            tea: "Люблю чай. Люблю Китайский чай. Коллекционирую посуду для чайной церемонии.",
            journey: "Люблю путешествовать. Люблю посещать разные страны и общаться с разными людьми. Путешествия вдохновляют и дают мне сил",
            it: "Люблю разные девайсы. Люблю разные устройства. Нравится разбираться в их устройстве и в том, как они работают")
    }
}
