//
//  SecondViewController.swift
//  LoginApp
//
//  Created by Igor Makeev on 25.05.2021.
//

import UIKit

class SecondViewController: UIViewController{
    
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = "Welcome, \(userName ?? "Noname")!"
        changeBackground()
        
    }
    
    func changeBackground(){
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "Background")
        backgroundImage.contentMode = .scaleToFill
        view.insertSubview(backgroundImage, at: 0)
    }
    
    @IBAction func logOutButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
