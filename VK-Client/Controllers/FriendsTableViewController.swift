//
//  FriendsTableViewController.swift
//  VK-Client
//
//  Created by HappyRoman on 03/12/2022.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    
    
    
    let friends = [
        Friend(name: "Алексей Макаров", avatar: UIImage.init(named: "friendAva/AMava"), photo: UIImage(named: "friendImage/AM1")),
        Friend(name: "Павел Мосейчук", avatar: UIImage.init(named: "friendAva/PMava"), photo: UIImage(named: "friendImage/PM1")),
        Friend(name: "Роман Шехоткин", avatar: UIImage.init(named: "friendAva/RSava"), photo: UIImage(named: "friendImage/RS1")),
        Friend(name: "Надежда Зименко", avatar: UIImage.init(named: "friendAva/NZava"), photo: UIImage(named: "friendImage/NZ1")),
        Friend(name: "Николай Маркин", avatar: UIImage.init(named: "friendAva/NMava"), photo: UIImage(named: "friendImage/NM1")),
        Friend(name: "Ольга Тодоратьева", avatar: UIImage.init(named: "friendAva/OTava"), photo: UIImage(named: "friendImage/OT1")),
        Friend(name: "Артем Рапацевич", avatar: UIImage.init(named: "friendAva/ARava"), photo: UIImage(named: "friendImage/AR1")),
        Friend(name: "Виталий Виноградов", avatar: UIImage.init(named: "friendAva/VVava"), photo: UIImage(named: "friendImage/VV1")),
        Friend(name: "Сергей Голубенко", avatar: UIImage.init(named: "friendAva/SGava"), photo: UIImage(named: "friendImage/SG1")),
        Friend(name: "Сергей Щербаков", avatar: UIImage.init(named: "friendAva/SSava"), photo: UIImage(named: "friendImage/SS1"))
    ]
    
    
    var sortedFriends = [Character : [Friend]]()
    
    
  
                        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.sortedFriends = sort(friends: friends)
        
    }
    
  
    
    private func sort (friends: [Friend]) -> [Character : [Friend]] {
        var friendsDict = [Character : [Friend]]()
        
        friends.forEach() {friend in
            
            guard let firstChar = friend.name.first else {return}
            if var thisCharFriends = friendsDict[firstChar] {
                thisCharFriends.append(friend)
                friendsDict[firstChar] = thisCharFriends
                
            } else {
                friendsDict[firstChar] = [friend]
            }
            
        }
        
        return friendsDict
    }
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sortedFriends.keys.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let keySorted = sortedFriends.keys.sorted()
        let friends = sortedFriends[keySorted[section]]?.count ?? 0
        return friends
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard  let cell = tableView.dequeueReusableCell(withIdentifier: "FriendTableCell", for: indexPath) as? FriendTableCell else {
            preconditionFailure("FriendsCell Error")
        }

        let firstChar = sortedFriends.keys.sorted()[indexPath.section]
        let friends = sortedFriends[firstChar]!
        let friend: Friend = friends[indexPath.row]
        
        
        cell.lableFriendCell.text = friend.name
        cell.imageFriendCell.image = friend.avatar

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        String(sortedFriends.keys.sorted()[section])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PhotoFriend",
           let destinationVC = segue.destination as? FriendCollectionViewController,
           let indexPath = tableView.indexPathForSelectedRow {
            
            destinationVC.title = friends[indexPath.row].name
            destinationVC.photo = friends[indexPath.row].photo
    
        }
    }

}
