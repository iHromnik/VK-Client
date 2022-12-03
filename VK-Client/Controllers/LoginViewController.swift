//
//  ViewController.swift
//  VK-Client
//
//  Created by HappyRoman on 25/11/2022.
//

import UIKit




class LoginViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordtextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGR = UITapGestureRecognizer(target: self, action: #selector(hideScrean))
        view.addGestureRecognizer(tapGR)
        

    }
    
    @objc func hideScrean() {
        view.endEditing(true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
       
        NotificationCenter.default.addObserver(self, selector: #selector(willShowKeyBoard), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(willHideKeyBoard), name: UIResponder.keyboardWillHideNotification, object: nil)
        
    }
    
    @objc func willShowKeyBoard(_ notification: Notification) {
        guard let info =  notification.userInfo as NSDictionary?,
              let keyboardSize = info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as? NSValue else {return}
        let keyboardHeight = keyboardSize.cgRectValue.size.height
        scrollView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: keyboardHeight, right: 0)
    }
    
    @objc func willHideKeyBoard(_ notification: Notification) {
        scrollView.contentInset = .zero
    }
    
 
    
    
    @IBAction func loginButten(_ sender: Any) {
        guard let username = usernameTextField.text,
              let password = passwordtextField.text,
              username == "",
              password == "" else {
            show(mesage: "Error password")
            return}
        
        performSegue(withIdentifier: "Login", sender: nil)
    }
    
}

