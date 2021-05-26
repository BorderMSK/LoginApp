//
//  Alert.swift
//  LoginApp
//
//  Created by Igor Makeev on 26.05.2021.
//

import UIKit

class Alert{
    
    private static func showBasicAlert(vc: UIViewController, title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        vc.present(alert, animated: true)
    }
    static func userNameAlert(vc: UIViewController){
        let userName = MainViewController()
        showBasicAlert(vc: vc, title: "Error", message: "You user name is \(userName.userName)")
    }
    
    static func passwordAlert(vc: UIViewController){
        let password = MainViewController()
        showBasicAlert(vc: vc, title: "Error", message: "You password is \(password.password)")
    }
    
    static func wrongData(vc: UIViewController){
        showBasicAlert(vc: vc, title: "Error", message: "You entered incorrect data")
    }
    
}
