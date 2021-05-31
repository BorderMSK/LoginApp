//
//  HobbiesViewController.swift
//  LoginApp
//
//  Created by Igor Makeev on 30.05.2021.
//

import UIKit

class HobbiesViewController: UIViewController{
    
    @IBOutlet weak var musicLabel: UILabel!
    @IBOutlet weak var teaLabel: UILabel!
    @IBOutlet weak var journeyLabel: UILabel!
    @IBOutlet weak var itLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let hobbies = Hobbies.getHobbies()
        changeBackground()
        musicLabel.text = hobbies.music
        teaLabel.text = hobbies.tea
        journeyLabel.text = hobbies.journey
        itLabel.text = hobbies.it
    }
}


