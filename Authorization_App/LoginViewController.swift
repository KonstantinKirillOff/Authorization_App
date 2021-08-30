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

    private let user = "Alex"
    private let password = "123"

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeSV = segue.destination as? WelcomeViewController else { return }
        welcomeSV.userName = user
    }
    
    @IBAction func logOf(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
            ? showAlert(title: "Ooops!", message: "Your name is \(user) 😉", false)
            : showAlert(title: "Ooops!", message: "Your password is \(password) 🤫", false)
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
        if userName != self.user || password != self.password {
            showAlert(title: "Invalid login or password", message: "Please, enter correct ligin and password", true)
        }
    }
    
}

