//
//  SignUpViewController.swift
//  Learning_Alamofire
//
//  Created by Legenda_759 on 06/04/22.
//

import UIKit

class SignUpViewController: BaseViewController {
    
    private let signUpView = SignUpView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(signUpView)
        signUpView.snp.makeConstraints { make in
//            make.width.equalTo(200)
//            make.height.equalTo(200)
            make.centerX.equalTo(view)
            make.centerY.equalTo(view)
            make.right.left.equalToSuperview()
            
            let lblInfo = UILabel()
            lblInfo.textAlignment = .right
            lblInfo.font = UIFont.boldSystemFont(ofSize: 14)
            lblInfo.text = "Already have an account?"
            
            let btn = UIButton()
            btn.setTitle("SignIn", for: .normal)
            btn.tintColor = .red
            btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
            btn.setTitleColor(.red, for: .normal)
            
            let stackView = UIStackView(arrangedSubviews: [lblInfo, btn])
            stackView.axis = .horizontal
            stackView.distribution = .equalSpacing
            stackView.spacing = 5
            view.addSubview(stackView)
            stackView.snp.makeConstraints { make in
                make.centerX.equalTo(view)
                make.bottom.equalToSuperview().inset(50)
            }
            
            btn.addTarget(self, action: #selector(btnTapped), for: .touchUpInside)
            signUpView.btnSignUp.addTarget(self, action: #selector(signUpTapped), for: .touchUpInside)
//            signUpView.backgroundColor = .yellow
        }
        
        
        // Do any additional setup after loading the view.
    }
    
    @objc func btnTapped() {
        dismiss(animated: true)
    }
    
    @objc func signUpTapped() {
        SessionStore().signUp(email: signUpView.txtFieldEmail.text ?? " ", password: signUpView.txtFieldPassword.text ?? " ", handler: {(res, err) in
            if err != nil {
                print("User not created!")
                return
            }
            print("User created!")
            self.dismiss(animated: true)
        })
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
