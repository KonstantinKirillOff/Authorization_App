//
//  PersonInformationViewController.swift
//  Authorization_App
//
//  Created by Константин Кириллов on 30.08.2021.
//

import UIKit

class PersonInformationViewController: UIViewController {
    
    
    @IBOutlet weak var firstNmaeLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var programmLanguagesLabel: UILabel!
    
    private let person: Person?

    override func viewDidLoad() {
        super.viewDidLoad()

    }
 

}
