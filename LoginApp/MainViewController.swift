//
//  MainViewController.swift
//  LoginApp
//
//  Created by Igor Makeev on 25.05.2021.
//

import UIKit

class MainViewController: UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    internal let userName = "User"
    internal let password = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        changeBackground()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "LogIn" else { return }
        let destination = segue.destination as! SecondViewController
        destination.userName = userNameTextField.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    func changeBackground(){
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "Background")
        backgroundImage.contentMode = .scaleToFill
        view.insertSubview(backgroundImage, at: 0)
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
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue){
        userNameTextField.text = nil
        passwordTextField.text = nil
    }
}

