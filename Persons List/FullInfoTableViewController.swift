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
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "aaa"
    }
    sellAtinde
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
}

