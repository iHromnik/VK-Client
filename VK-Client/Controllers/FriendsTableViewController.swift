//
//  FriendsTableViewController.swift
//  VK-Client
//
//  Created by HappyRoman on 03/12/2022.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    
    
    
    let friends = [
        Friend(name: "Алексей Макаров", avatar: UIImage.init(named: "AMava"), image: UIImage(named: "AM1")),
        Friend(name: "Павел Мосейчук", avatar: UIImage.init(named: "PMava"), image: UIImage(named: "PM1")),
        Friend(name: "Роман Шехоткин", avatar: UIImage.init(named: "RSava"), image: UIImage(named: "RS1")),
        Friend(name: "Надежда Зименко", avatar: UIImage.init(named: "NZava"), image: UIImage(named: "NZ1")),
        Friend(name: "Николай Маркин", avatar: UIImage.init(named: "NMava"), image: UIImage(named: "NM1")),
        Friend(name: "Ольга Тодоратьева", avatar: UIImage.init(named: "OTava"), image: UIImage(named: "OT1")),
        Friend(name: "Артем Рапацевич", avatar: UIImage.init(named: "ARava"), image: UIImage(named: "AR1")),
        Friend(name: "Виталий Виноградов", avatar: UIImage.init(named: "VVava"), image: UIImage(named: "VV1")),
        Friend(name: "Сергей Голубенко", avatar: UIImage.init(named: "SGava"), image: UIImage(named: "SG1")),
        Friend(name: "Сергей Щербаков", avatar: UIImage.init(named: "SSava"), image: UIImage(named: "SS1"))
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
        return friends.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard  let cell = tableView.dequeueReusableCell(withIdentifier: "FriendTableCell", for: indexPath) as? FriendTableCell else {
            preconditionFailure("FriendsCell Error")
        }

        cell.lableFriendCell.text = friends[indexPath.row].name
        cell.imageFriendCell.image = friends[indexPath.row].avatar

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PhotoFriend",
           let destinationVC = segue.destination as? FriendCollectionViewController,
           let indexPath = tableView.indexPathForSelectedRow
        {
            destinationVC.photo = friends[indexPath.row].image

        }
    }

}
