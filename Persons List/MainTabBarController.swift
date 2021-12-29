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
            
            
            guard let navigationVC = viewController as? UINavigationController else {return}
            
            
            if let personNamesVC  = navigationVC.topViewController as? PersonsNamesTableViewController {
                personNamesVC.personsArray = personsArray
                
            } else {
                guard let fullInfoVC = navigationVC.topViewController as? FullInfoTableViewController else {return}
                fullInfoVC.personsArray = personsArray
            }
            
        }
    }
}
