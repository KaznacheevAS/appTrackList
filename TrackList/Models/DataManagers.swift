//
//  DataManagers.swift
//  TrackList
//
//  Created by Anton Kaznacheev on 02.11.2022.
//

import Foundation

class DataManager {

    static let shared = DataManager()
    
    let name = ["Anton", "Alexs", "Sana", "Alla",
                "Sana", "Dasha", "Pavel", "Sanaaa"]
    
    let ferstName = ["Kaznacheev", "Krokov", "Sarchev", "Priot",
                     "Dar", "Dad", "Fare", "Datr",]
    
    let phone = ["+7918151848", "89181311312", "89451231242",
                 "88431231193", "+7918212312", "+79292123", "8198721231"]
    
    let email = ["kaznacheev@mail.ru", "polermi@yandex.ru", "moreplan@gmail.com",
                 "4536@mail.ru", "slon93@ya.com", "plotri@ya.com", "polonsk@ya.com"]
    
    private init(){}
}

