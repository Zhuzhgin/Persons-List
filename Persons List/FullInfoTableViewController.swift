//
//  FullInfoTableViewController.swift
//  Persons List
//
//  Created by Artem Zhuzhgin on 29.12.2021.
//

import UIKit

class FullInfoTableViewController: UITableViewController {

    var personsArray: [Person]!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(personsArray.count)
       
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        personsArray.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let name = personsArray[section].name
        let surName = personsArray[section].surName
        let fullName = "\(name) \(surName) "
        return fullName
    }
    
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        
       // print(indexPath.row)
        let person = personsArray[indexPath.section ]
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0: content.text = person.phone
        default: content.text = person.eMail
        }
        cell.contentConfiguration = content
        
        return cell
    }
}

