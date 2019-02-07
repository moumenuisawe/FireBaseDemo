//
//  ViewController.swift
//  FireBaseDemo
//
//  Created by moumen isawe on 2/7/19.
//  Copyright © 2019 moumen. All rights reserved.
//

import UIKit
import Firebase

class SignInVC: UIViewController {

    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    


    @IBAction func signInTapped(_ sender: Any) {
        guard   let email = emailTF.text,
            email != "" ,
            let password = passwordTF.text,
            password != ""
            else {
                AlertController.showAlert(self, title: "Missing Info", message: "you should Enter all field")
                return }
        Auth.auth().signIn(withEmail: email, password: password) {  (user, error) in
            guard error == nil else{
                AlertController.showAlert(self, title: "error", message: error!.localizedDescription)
                
                return}
            guard let user = user else{return}
            print(user.user.uid)
            print(user.user.email)
            print(user.user.displayName ?? "error")
         
            self.performSegue(withIdentifier: "singInSegue", sender: nil )
            
        }
    }
}

