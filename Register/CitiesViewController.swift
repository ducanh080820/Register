//
//  ViewController.swift
//  Register
//
//  Created by Duc Anh on 11/15/18.
//  Copyright © 2018 Duc Anh. All rights reserved.
//

import UIKit

typealias Json = Dictionary<AnyHashable, Any>

class ViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DataServices.shared.loadData{ [unowned self] in
            self.tableView.reloadData()
        }
    }
}

// MARK: - UITableViewDataSource

extension ViewController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  DataServices.shared.cities.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        configureCell(cell: cell, forRowAt: indexPath)
        return cell
    }
    
    func configureCell(cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.textLabel?.text =  DataServices.shared.cities[indexPath.row].name
        cell.detailTextLabel?.text = String(DataServices.shared.cities[indexPath.row].code)
    }
    // MARK: Navigation
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        DataServices.shared.selectedCity =  DataServices.shared.cities[indexPath.row]
        UserDefaults.standard.set(DataServices.shared.cities[indexPath.row].name, forKey: "city")
    }
}




