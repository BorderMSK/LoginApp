//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Igor Makeev on 25.05.2021.
//

import UIKit

class WelcomeViewController: UIViewController{
    
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    var userName: String!
    var user = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = "Welcome, \(user.fullName)"
        changeBackground()
    }
    
    @IBAction func logOutButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
