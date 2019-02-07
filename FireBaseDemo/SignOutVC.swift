//
//  SignOutVC.swift
//  FireBaseDemo
//
//  Created by moumen isawe on 2/7/19.
//  Copyright © 2019 moumen. All rights reserved.
//

import UIKit
import Firebase
class SignOutVC: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let userName = Auth.auth().currentUser?.displayName else{return}
        helloLabel.text = "hello \(userName)"
    }
    @IBAction func loginOtuTapped(_ sender: Any) {
        do{
            try Auth.auth().signOut()
            performSegue(withIdentifier: "signOutSegue", sender: nil )
        }
        catch{
                    AlertController.showAlert(self, title: "error", message: "error while trying to sign out")
        }
    }
}
