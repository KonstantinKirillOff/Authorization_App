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
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let personData = person else { return }
        
        firstNmaeLabel.text = "Имя: \(personData.firstName)"
        lastNameLabel.text = "Фамилия: \(personData.lastName)"
        ageLabel.text = "Возраст: \(String(personData.age))"
        genderLabel.text = "Пол: \(personData.gender.rawValue)"
        programmLanguagesLabel.text = "Языки программирования: \(personData.programmLanguages.joined(separator: ","))"
       
    }
 

}
