//
//  MainTabBarController.swift
//  Persons List
//
//  Created by Artem Zhuzhgin on 29.12.2021.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        segue()
    }
    
    private let personsArray = Person.returnArrayOfPersons()
    
    private func segue () {
        let viewControllers = self.viewControllers!
        
        //цикл по архиву VC табконтроллера
        for viewController in viewControllers {
            
            if let fullInfoVC = viewController as? FullInfoTableViewController{
                            fullInfoVC.personsArray = personsArray
                        }
            if let navigationVC = viewController as? UINavigationController {
                guard  let personNamesVC  = navigationVC.topViewController as? PersonsNamesTableViewController else {return}
                personNamesVC.personsArray = personsArray
            }
            
            
        }
}
}
