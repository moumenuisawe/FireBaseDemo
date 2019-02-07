//
//  AlertController.swift
//  FireBaseDemo
//
//  Created by moumen isawe on 2/7/19.
//  Copyright © 2019 moumen. All rights reserved.
//

import UIKit
class AlertController {
    
    static func showAlert(_ vc:UIViewController,title:String , message:String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "ok", style: .default, handler: nil  )
        
        alert.addAction(action)
        
        vc.present(alert, animated: true, completion: nil)
        
        
    }
    
    
    
    
}
