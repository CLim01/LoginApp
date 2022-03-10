//
//  MainViewController.swift
//  LoginApp
//
//  Created by 임성빈 on 2022/03/10.
//

import UIKit
import FirebaseAuth

class MainViewController: UIViewController {
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var logoutButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.isHidden = true
        
        let email = Auth.auth().currentUser?.email ?? "사용자"
        
        userNameLabel.text = "\(email)님"
    }
    
    @IBAction func tapLogoutButton(_ sender: UIButton) {
        let firebaseAuth = Auth.auth()
        
        do {
            // MARK: 로그아웃
            try firebaseAuth.signOut()
            
            // MARK: 시작 View로 pop
            self.navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
            print("ERROR: signout \(signOutError.localizedDescription)")
        }
    }
}
