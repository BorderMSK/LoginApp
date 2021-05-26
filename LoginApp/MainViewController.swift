//
//  MainViewController.swift
//  LoginApp
//
//  Created by Igor Makeev on 25.05.2021.
//

import UIKit

class MainViewController: UIViewController{
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    internal let userName = "User"
    internal let password = "Password"
    
    func addTapGestureToHideKeyboard() {
        let tapGesture = UITapGestureRecognizer(target: view, action: #selector(view.endEditing))
        view.addGestureRecognizer(tapGesture)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        addTapGestureToHideKeyboard()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "LogIn" else { return }
        let destination = segue.destination as! SecondViewController
        destination.userName = userNameTextField.text
    }
    
    @IBAction func logInButton(_ sender: Any) {
        guard
        userNameTextField.text == userName,
        passwordTextField.text == password
            else {
            Alert.wrongData(vc: self)
            passwordTextField.text = nil
                return
        }
        performSegue(withIdentifier: "LogIn", sender: nil)
    }
    
    @IBAction func forgotUserNameButton(_ sender: Any) {
        Alert.userNameAlert(vc: self)
    }
    
    @IBAction func forgotPasswordButton(_ sender: Any) {
        Alert.passwordAlert(vc: self)
    }
}
