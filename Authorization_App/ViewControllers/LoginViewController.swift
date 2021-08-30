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

    private let userData = User.getUserInfo()

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabControllers = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabControllers.viewControllers else { return }
        
        for viewController in viewControllers {
            if let welcomeSV = viewController as? WelcomeViewController {
                welcomeSV.person = userData.person
            } else if let navigationVC = viewController as? UINavigationController {
                let personVC = navigationVC.topViewController as! PersonInformationViewController
                personVC.person = userData.person
                
            }
        }
    }
    
    @IBAction func logOf(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 1
            ? showAlert(title: "Ooops!", message: "Your name is \(userData.login) 😉", false)
            : showAlert(title: "Ooops!", message: "Your password is \(userData.password) 🤫", false)
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
        if userName != userData.login || password != userData.password {
            showAlert(title: "Invalid login or password", message: "Please, enter correct ligin and password", true)
        }
    }
    
}

