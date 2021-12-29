//
//  Person.swift
//  Persons List
//
//  Created by Artem Zhuzhgin on 29.12.2021.
//

import Foundation
import UIKit

struct Person: Hashable {
    var name: String
    var surName: String
    var eMail: String
    var phone: String
    
    static func returnArrayOfPersons() -> [Person] {
        var setOfPersons = Set<Person>()
        var finalArrayOfPersons: [Person] = []
        
        let maxIndexOfPersons = DataManager.shared.names.count - 1
        
        while setOfPersons.count < DataManager.shared.names.count {
            let indexOfNames = Int.random(in: 0...maxIndexOfPersons)
            let indexOfSurnames = Int.random(in: 0...maxIndexOfPersons)
            let indexOfEmails = Int.random(in: 0...maxIndexOfPersons)
            let indexOfPhones = Int.random(in: 0...maxIndexOfPersons)
            
            let person = Person(name: DataManager.shared.names[indexOfNames], surName: DataManager.shared.surnames[indexOfSurnames], eMail: DataManager.shared.emails[indexOfEmails], phone: DataManager.shared.phones[indexOfPhones])
            
            if setOfPersons.contains(person) {
                print("Person \(person.name), \(person.surName) уже есть в контактах ")
                continue
            }
            else {
                setOfPersons.insert(person)
                finalArrayOfPersons.append(person)
            }
        }
        return finalArrayOfPersons
    }
    
}








    

