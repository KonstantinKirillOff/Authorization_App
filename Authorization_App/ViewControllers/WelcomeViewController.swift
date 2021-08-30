//
//  WelcomeViewController.swift
//  Authorization_App
//
//  Created by Константин Кириллов on 25.08.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var userName: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let userName = userName else { return }
        welcomeLabel.text = "Welcome, \(userName)"
    }

}
