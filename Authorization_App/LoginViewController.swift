//
//  ViewController.swift
//  Authorization_App
//
//  Created by Константин Кириллов on 25.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var forgetUserNameButton: UIButton!
    @IBOutlet weak var forgetPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        forgetPasswordButton.titleLabel!.adjustsFontSizeToFitWidth = true
        forgetPasswordButton.titleLabel!.minimumScaleFactor = 0.1
        forgetPasswordButton.layer.cornerRadius = 10
        
        forgetUserNameButton.titleLabel!.adjustsFontSizeToFitWidth = true
        forgetUserNameButton.titleLabel!.minimumScaleFactor = 0.1
        forgetUserNameButton.layer.cornerRadius = 10
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    


}

