//
//  ViewController.swift
//  Authorization_App
//
//  Created by Константин Кириллов on 25.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeSV = segue.destination as? WelcomeViewController else { return }
        welcomeSV.userName = userNameTF.text
    }
    
    @IBAction func logOf(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    
    @IBAction func forgetUserNamePressed() {
        showAlert(title: "Ooops!", message: "Your name is Alex 😉", false)
    }
    
    
    @IBAction func forgetPasswordPressed() {
        showAlert(title: "Ooops!", message: "Your password is 123 🤫", false)
    }
    
    
    @IBAction func loginButtonPressed() {
        if let userName = userNameTF.text, let password = passwordTF.text {
            checkData(userName: userName, password: password)
        }
        
    }
    
}

// MARK: - Private function
extension ViewController {
    private func showAlert(title: String, message: String, _ invalidData: Bool) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .cancel) {_ in
            if invalidData {
                self.passwordTF.text = ""
            }
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    private func checkData(userName: String, password: String) {
        if ( userName != "Alex" || password != "123" ) {
            showAlert(title: "Invalid login or password", message: "Please, enter correct ligin and password", true)
        }
    }
    
}

