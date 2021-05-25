//
//  MainViewController.swift
//  LoginApp
//
//  Created by Igor Makeev on 25.05.2021.
//

import UIKit

class MainViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func forgotUserNameButton(_ sender: Any) {
        let alertUserNameController = UIAlertController(title: "Error", message: "You user name is User", preferredStyle: .alert)
        let actionUserNameButton = UIAlertAction(title: "Ok", style: .cancel) { (action) in
        }
        alertUserNameController.addAction(actionUserNameButton)
        self.present(alertUserNameController, animated: true, completion: nil)
    }
    
    @IBAction func forgotPasswordButton(_ sender: Any) {
        let alertPasswordController = UIAlertController(title: "Error", message: "You password is Password", preferredStyle: .alert)
        let actionPasswordButton = UIAlertAction(title: "Ok", style: .cancel) { (action) in
        }
        alertPasswordController.addAction(actionPasswordButton)
        self.present(alertPasswordController, animated: true, completion: nil)
    }
}
