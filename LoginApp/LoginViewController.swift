//
//  LoginViewController.swift
//  LoginApp
//
//  Created by 임성빈 on 2022/03/10.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var emailLoginButton: UIButton!
    @IBOutlet weak var googleLoginButton: UIButton!
    @IBOutlet weak var appleLoginButton: UIButton!
    
    // MARK: 버튼 UI 설정
    override func viewDidLoad() {
        super.viewDidLoad()
        
        [emailLoginButton, googleLoginButton, appleLoginButton].forEach {
            $0?.layer.borderWidth = 1
            $0?.layer.borderColor = UIColor.white.cgColor
            $0?.layer.cornerRadius = 30
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // MARK: 네비게이션바 숨기기
        navigationController?.navigationBar.isHidden = true
    }
    
    // MARK: Google 버튼 Tap
    @IBAction func tapGoogleLoginButton(_ sender: UIButton) {
    }
    
    // MARK: Apple 버튼 Tap
    @IBAction func tapAppleLoginButton(_ sender: UIButton) {
    }
    
}
