//
//  PNWeatherTableViewController.swift
//  Prompt Now Interview
//
//  Created by Peter Beans on 1/11/23.
//

import UIKit

class PNWeatherTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(PNWeatherTableViewCell.self, forCellReuseIdentifier: PNWeatherTableViewCell.description())
        tableView.delegate = self
        tableView.dataSource = self
        tableView.selfSizingInvalidation = .enabledIncludingConstraints
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 8
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PNWeatherTableViewCell.description(), for: indexPath) as? PNWeatherTableViewCell else {
            return UITableViewCell()
        }
        

        // Configure the cell...
        cell.configure(with: "A")
        return cell
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
