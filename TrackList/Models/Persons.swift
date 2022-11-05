//
//  Persons.swift
//  TrackList
//
//  Created by Anton Kaznacheev on 05.11.2022.
//

import Foundation

struct Person {
    let name: String
    let ferstName: String
    let phone: String
    
    var descriptor: String {
        "\(name) \(ferstName)"
    }
}

extension Person {
    static func getContent()->[Person]{
        
        var persons: [Person] = []
        
        let name = DataManager.shared.name.shuffled()
        let ferstName = DataManager.shared.ferstName.shuffled()
        let phone = DataManager.shared.phone.shuffled()
        
        let interrationCount = min(name.count, ferstName.count, phone.count) - 1
        
        for index in 0...interrationCount {
            let person = Person(
                name: name[index],
                ferstName: ferstName[index],
                phone: phone[index]
            )
            persons.append(person)
        }
        
        return persons
    }
}
