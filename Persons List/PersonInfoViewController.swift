//
//  PersonInfoViewController.swift
//  Persons List
//
//  Created by Artem Zhuzhgin on 29.12.2021.
//

import UIKit

class PersonInfoViewController: UIViewController {

    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var navigationBarItem: UINavigationItem!
    
    var person: Person!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       navigationBarItem.title = "\(person.name) \(person.surName)"
        phoneNumberLabel.text = person.phone
        emailLabel.text = person.eMail
    }
}
