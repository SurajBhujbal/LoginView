//
//  ViewController.swift
//  Login_Sample
//
//  Created by steven mankina on 27/08/18.
//  Copyright © 2018 RoxAI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let Default = UserDefaults.standard
    
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passText:UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func login(_ sender: Any) {
        if emailText.text != nil && passText.text != nil {
            print("Login Sucessfully")
            Default.set(emailText, forKey: "email")
            Default.set(passText, forKey: "password")
            
            Default.synchronize()
            
            Default.value(forKey: "email")
            Default.value(forKey: "password")
            
        }else{
            print("Failed")
        }
    }
    
}

