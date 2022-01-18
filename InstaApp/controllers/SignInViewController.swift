//
//  SignInViewController.swift
//  InstaApp
//
//  Created by Abduqaxxor on 17/1/22.
//

import UIKit

class SignInViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    // MARK: - Methods
    
    func callSignUpViewController(){
        let vc = SignUpViewController(nibName: "SignUpViewController", bundle: nil)
        self.present(vc, animated: true, completion: nil)
    }
    
    // MARK: - Actions

    @IBAction func onSignedIn(_ sender: Any) {
        sceneDelegate().callHomeViewController()
    }
    
    
    @IBAction func onSignedUp(_ sender: Any) {
        callSignUpViewController()
    }
}
