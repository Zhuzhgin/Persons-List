//
//  PersonsNamesTableViewController.swift
//  Persons List
//
//  Created by Artem Zhuzhgin on 29.12.2021.
//

import UIKit

class PersonsNamesTableViewController: UITableViewController {
    
    var personsArray: [Person]!

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let person = personsArray[indexPath.row ]
        var content = cell.defaultContentConfiguration()
        
        content.text = "\(person.name) \(person.surName)"
        cell.contentConfiguration = content
        
        return cell
    }
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personInfoVC = segue.destination as? PersonInfoViewController else {return}
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        personInfoVC.person = personsArray[indexPath.row]
    }
}
