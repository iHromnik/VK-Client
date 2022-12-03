//
//  NewGroupTableViewController.swift
//  VK-Client
//
//  Created by HappyRoman on 03/12/2022.
//

import UIKit

class NewGroupTableViewController: UITableViewController {
    
    
    let groups = [
        Group(name: "wilsacom new", avatar: UIImage.init(named: "wilsacom new")),
        Group(name: "Халява AppStore", avatar: UIImage.init(named: "Халява AppStore")),
        Group(name: "Wylsacom", avatar: UIImage.init(named: "Wylsacom")),
        Group(name: "iRepService", avatar: UIImage.init(named: "iRepService")),
        Group(name: "Чоткий паца", avatar: UIImage.init(named: "Чоткий паца")),
        Group(name: "Begin English", avatar: UIImage.init(named: "Begin English")),
        Group(name: "Тату рай", avatar: UIImage.init(named: "Тату рай")),
        Group(name: "Мизантроп", avatar: UIImage.init(named: "Мизантроп")),
        Group(name: "Интересные факты", avatar: UIImage.init(named: "Интересные факты")),
        Group(name: "Интеллектуариум", avatar: UIImage.init(named: "Интеллектуариум"))
    ]
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return groups.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NewGroupCell", for: indexPath) as? NewGroupCell else {
            preconditionFailure("Error")
        }

        cell.imagesView.image = groups[indexPath.row].avatar
        cell.lableView.text = groups[indexPath.row].name

        return cell
    }
    

    

}
