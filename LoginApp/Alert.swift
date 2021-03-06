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
        let user = User.getUserData()
        showBasicAlert(vc: vc, title: "Forgot your name?", message: "You user name is \(user.login)")
    }
    
    static func passwordAlert(vc: UIViewController){
        let password = User.getUserData()
        showBasicAlert(vc: vc, title: "Forgot your password?", message: "You password is \(password.password)")
    }
    
    static func wrongData(vc: UIViewController){
        showBasicAlert(vc: vc, title: "Error", message: "You entered incorrect data")
    }
    
}
