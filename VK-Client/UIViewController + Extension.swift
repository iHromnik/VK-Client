//
//  UIViewController + Extension.swift
//  VK-Client
//
//  Created by HappyRoman on 30/11/2022.
//

import UIKit

extension UIViewController {
    func show(mesage: String) {
        let alertVC = UIAlertController(title: "Faild", message: mesage, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertVC.addAction(okAction)
        present(alertVC, animated: true, completion: nil)
    }
}
