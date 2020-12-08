//
//  ViewController.swift
//  Chat App
//
//  Created by Apple on 01/12/2020.
//  Copyright © 2020 saad. All rights reserved.
//

import UIKit
import FirebaseAuth

class ConversationViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        DatabaseManager.shared.test()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        validateAuth()
    }
    
    private func validateAuth() {
        if FirebaseAuth.Auth.auth().currentUser == nil {
            let vc  = LoginViewController()
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: true, completion: nil)
        }
    }
}

