//
//  PersonInformationViewController.swift
//  LoginApp
//
//  Created by Igor Makeev on 30.05.2021.
//

import UIKit

class PersonInformationViewController: UIViewController{
    
    @IBOutlet weak var birthdayLabel: UILabel!
    @IBOutlet weak var liveLabel: UILabel!
    @IBOutlet weak var educationLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    @IBOutlet weak var socialMediaLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageLabel: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let data = PersonalInformation.getPersonalInformation()
        let name = Person.getPerson()
        changeBackground()
        birthdayLabel.text = data.born
        liveLabel.text = data.live
        educationLabel.text = data.education
        jobLabel.text = data.job
        socialMediaLabel.text = data.socialMedia
        nameLabel.text = name.fullName
        imageLabel.image = name.image
        imageLabel.layer.cornerRadius = imageLabel.frame.size.width / 2
    }
}
