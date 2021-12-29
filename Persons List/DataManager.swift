//
//  Data.swift
//  Persons List
//
//  Created by Artem Zhuzhgin on 29.12.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let names = [
    "John","Aaron", "Tim", "Ted", "Steven", "Sharon", "Nicola", "Allan",
        "Bruce", "Carl" ]
    
    let surnames = [
        "Smith", "Dow", "Isaacson", "Pennyworth","Jankin", "Butler", "Black", "Robertson", "Murphy", "Williams"
    ]
    
    let emails = [
    "aaaa@mail.ru", "bbbb@mail.ru", "cccc@mail.ru","dddd@mail.ru", "eeee@mail.ru", "ffff@mail.ru", "gggg@mail.ru", "hhhh@mail.ru", "iiii@mail.ru", "jjjj@mail.ru"
    ]
    
    let phones = [
        "102934873", "321876362","472950382","937193758","620948184","198284038","890238471","839281743","843021937", "873765492"
    ]
    private init() {}
    
}

