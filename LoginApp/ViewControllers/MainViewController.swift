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
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    var user = User.getUserData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        changeBackground()
        changeButtons()
        userNameTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let tabBar = segue.destination as? UITabBarController{
            tabBar.viewControllers?.forEach {
                if let viewContoller = $0 as? WelcomeViewController{
                    viewContoller.userName = user.login
                }
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    func changeButtons(){
        loginButton.layer.cornerRadius = 10
        forgotPasswordButton.layer.cornerRadius = 10
        forgotUserNameButton.layer.cornerRadius = 10
    }
    
    @IBAction func logInButton(_ sender: Any) {
        guard
            userNameTextField.text == user.login,
            passwordTextField.text == user.password
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
extension MainViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField{
            textField.resignFirstResponder()
            passwordTextField.becomeFirstResponder()
        } else{
            logInButton(self)
        }
        return true
    }
}
extension UIViewController {
    func changeBackground(){
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "Background")
        backgroundImage.contentMode = .scaleToFill
        view.insertSubview(backgroundImage, at: 0)
    }
}
