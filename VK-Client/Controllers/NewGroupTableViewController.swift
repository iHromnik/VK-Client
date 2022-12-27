//
//  NewGroupTableViewController.swift
//  VK-Client
//
//  Created by HappyRoman on 03/12/2022.
//

import UIKit

class NewGroupTableViewController: UITableViewController {
    
    
    let groups = [
        Group(name: "wilsacom new", avatar: UIImage.init(named: "groupAva/wilsacom new")),
        Group(name: "Халява AppStore", avatar: UIImage.init(named: "groupAva/Халява AppStore")),
        Group(name: "Wylsacom", avatar: UIImage.init(named: "groupAva/Wylsacom")),
        Group(name: "iRepService", avatar: UIImage.init(named: "groupAva/iRepService")),
        Group(name: "Чоткий паца", avatar: UIImage.init(named: "groupAva/Чоткий паца")),
        Group(name: "Begin English", avatar: UIImage.init(named: "groupAva/Begin English")),
        Group(name: "Тату рай", avatar: UIImage.init(named: "groupAva/Тату рай")),
        Group(name: "Мизантроп", avatar: UIImage.init(named: "groupAva/Мизантроп")),
        Group(name: "Интересные факты", avatar: UIImage.init(named: "groupAva/Интересные факты")),
        Group(name: "Интеллектуариум", avatar: UIImage.init(named: "groupAva/Интеллектуариум"))
    ]
    
    override func viewDidLoad() {
        tableView.register(UINib(nibName: "FriendGroupXIBCell", bundle: nil), forCellReuseIdentifier: "FriendGroupXIBCell")
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FriendGroupXIBCell", for: indexPath) as? FriendGroupXIBCell else {
            preconditionFailure("Error")
        }

        cell.avatarImage.image = groups[indexPath.row].avatar
        cell.lableName.text = groups[indexPath.row].name

        return cell
    }
    

    

}
