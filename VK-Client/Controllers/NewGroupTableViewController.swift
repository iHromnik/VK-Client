//
//  NewGroupTableViewController.swift
//  VK-Client
//
//  Created by HappyRoman on 03/12/2022.
//

import UIKit

class NewGroupTableViewController: UITableViewController {
    
    @IBOutlet weak var searchBarGroup: UISearchBar! {
        didSet{
            searchBarGroup.delegate = self
        }
    }
    
    var searchGroup = [Group]()
    
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
        super.viewDidLoad()
        tableView.register(UINib(nibName: "FriendGroupXIBCell", bundle: nil), forCellReuseIdentifier: "FriendGroupXIBCell")
       
        searchGroup = groups
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchGroup.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FriendGroupXIBCell", for: indexPath) as? FriendGroupXIBCell else {
            preconditionFailure("Error")
        }

        cell.avatarImage.image = searchGroup[indexPath.row].avatar
        cell.lableName.text = searchGroup[indexPath.row].name

        return cell
    }

}

extension NewGroupTableViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
        if searchText.isEmpty {
            searchGroup = groups
        } else {
            searchGroup = groups.filter{$0.name.contains(searchText)}
            
        }
        tableView.reloadData()
    }
}
