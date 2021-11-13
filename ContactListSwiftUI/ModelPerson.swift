//
//  ModelPerson.swift
//  ContactListSwiftUI
//
//
//  Created by Vladyslav Haidaienko on 13.11.2021.
//

import Foundation

class ModelPerson: Identifiable {
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    let id: Int
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    init(name: String, surname: String, email: String, phoneNumber: String, recordId: Int) {
        self.name = name
        self.surname = surname
        self.email = email
        self.phoneNumber = phoneNumber
        self.id = recordId
    }
    
    static func generateContacts() -> [ModelPerson] {
        (1...10).map { generateContact($0) }
    }
    
    static func generateContact() -> ModelPerson {
        generateContact(Int.random(in: 1...10))
    }
    
    static func generateContact(_ idx: Int) -> ModelPerson {
        let names = [
            "John", "Aaron", "Tim", "Ted",
            "Steven", "Sharon", "Nicola",
            "Allan", "Bruce", "Carl"
        ]
        
        let surnames = [
            "Smith", "Dow", "Isaacson", "Pennyworth",
            "Jankin", "Butler", "Black", "Robertson",
            "Murphy", "Williams"
        ]
        
        let emails = [
            "jjjj@mail.ru", "aaaa@mail.ru", "eeee@mail.ru",
            "hhhh@mail.ru", "wwww@mail.ru", "mmmm@mail.ru",
            "xxxx@mail.ru", "pppp@mail.ru", "ssss@mail.ru",
            "llll@mail.ru"
        ]
        
        let phones = [
            "745396026", "145036843", "287185656", "293520954",
            "562880225", "738594072", "825654134", "645898473",
            "432349845", "459477625"
        ]
        
        let name = names[Int.random(in: 0..<names.count)]
        let surname = surnames[Int.random(in: 0..<surnames.count)]
        let email = emails[Int.random(in: 0..<emails.count)]
        let phone = phones[Int.random(in: 0..<phones.count)]
        
        let newContact = ModelPerson(name: name, surname: surname, email: email, phoneNumber: phone, recordId: idx)
        return newContact
    }
}
