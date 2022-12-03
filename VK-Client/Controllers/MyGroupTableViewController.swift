//
//  MyGroupTableViewController.swift
//  VK-Client
//
//  Created by HappyRoman on 03/12/2022.
//

import UIKit

class MyGroupTableViewController: UITableViewController {
    
    var myGroup: [Group] = []
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return myGroup.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyGroupCell", for: indexPath) as? MyGroupCell else {
            preconditionFailure("Error")
        }

        cell.imagesView.image = myGroup[indexPath.row].avatar
        cell.lableView.text = myGroup[indexPath.row].name

        return cell
    }

    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            myGroup.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    
    
    
    @IBAction func addSelectedGroup(segue: UIStoryboardSegue) {
      if  let sourceVC = segue.source as? NewGroupTableViewController,
          let indexPath = sourceVC.tableView.indexPathForSelectedRow {
          let group = sourceVC.groups[indexPath.row]
          if !myGroup.contains(where: {$0.name == group.name}){
              myGroup.append(group)
              tableView.reloadData()
          }
          
      }
        
    }
    
}
