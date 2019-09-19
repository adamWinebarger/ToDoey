//
//  ViewController.swift
//  ToDoey
//
//  Created by adam Winebarger on 9/12/19.
//  Copyright © 2019 adam Winebarger. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    
    let itemArray = ["Find Mike", "Buy Eggos", "Destroy Demagorgon"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //TableView Setup
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    //Cell setup
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }

    
    //TableView Delegate Method
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(indexPath.row)
        //print(itemArray[indexPath.row])
        
        if (tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark) {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        
    }
}

