//
//  SignUpViewController.swift
//  InstaApp
//
//  Created by Abduqaxxor on 18/1/22.
//

import UIKit

class SignUpViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
   
    // MARK: - Method
    
    func backSignIn(){
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: - Actions
    
    
    @IBAction func onSignUp(_ sender: Any) {
        backSignIn()
    }
    
    @IBAction func onSignIn(_ sender: Any) {
       backSignIn()
    }
}
