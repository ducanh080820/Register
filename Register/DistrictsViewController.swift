//
//  DistrictsViewController.swift
//  Register
//
//  Created by Duc Anh on 11/20/18.
//  Copyright © 2018 Duc Anh. All rights reserved.
//

import UIKit



class DistrictsViewController: UITableViewController {
    override func viewDidLoad() {
         super.viewDidLoad()
    }
}

// MARK: - UITableViewDataSource

extension DistrictsViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataServices.shared.districtFilter.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1", for: indexPath)
        configureCell(cell: cell, forRowAt: indexPath)
        return cell
    }
    
    func configureCell(cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.textLabel?.text = DataServices.shared.districtFilter[indexPath.row].name
        cell.detailTextLabel?.text = String(DataServices.shared.districtFilter[indexPath.row].districtCode)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        UserDefaults.standard.set(DataServices.shared.districtFilter[indexPath.row].name, forKey: "district")
    }
    
}


