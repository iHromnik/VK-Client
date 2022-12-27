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
        tableView.register(UINib(nibName: "FriendGroupXIBCell", bundle: nil), forCellReuseIdentifier: "FriendGroupXIBCell")
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myGroup.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FriendGroupXIBCell", for: indexPath) as? FriendGroupXIBCell else {
            preconditionFailure("Error")
        }

        cell.avatarImage.image = myGroup[indexPath.row].avatar
        cell.lableName.text = myGroup[indexPath.row].name

        return cell
    }

    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            myGroup.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "unwind" {
            if let destination = segue.destination as? NewGroupTableViewController {
                destination.newGroupDeleget = self
            }
        }
    }
    
//    @IBAction func addSelectedGroup(segue: UIStoryboardSegue) {
//      if  let sourceVC = segue.source as? NewGroupTableViewController,
//          let indexPath = sourceVC.tableView.indexPathForSelectedRow {
//          let group = sourceVC.groups[indexPath.row]
//          if !myGroup.contains(where: {$0.name == group.name}){
//              myGroup.append(group)
//              tableView.reloadData()
//          }
//
//      }
//
//    }
    
}

extension MyGroupTableViewController: NewGroupDelegate {
    func getNewGroup(group: Group) {
        
        if !myGroup.contains(where: {$0.name == group.name}){
            myGroup.append(group)
            tableView.reloadData()
        }
        
    }
    
    
}
