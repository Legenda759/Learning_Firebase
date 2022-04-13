//
//  SignInViewController.swift
//  Learning_Alamofire
//
//  Created by Legenda_759 on 06/04/22.
//

import UIKit
import SnapKit

class SignInViewController: BaseViewController {
    
    let session = SessionStore()
    let signInView = SignInView(frame: .zero)
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        if session.session != nil {
            sceneDelegate().callPostViewController()
        }
        initviews()
        // Do any additional setup after loading the view.
    }
    
    func initviews() {
        view.backgroundColor = .white
        view.addSubview(signInView)
        signInView.snp.makeConstraints { make in
//            make.width.equalTo(200)
//            make.height.equalTo(200)
            make.centerX.equalTo(view)
            make.centerY.equalTo(view)
            make.right.left.equalToSuperview()
//            make.edges.equalToSuperview()
        }
        
        let lblInfo = UILabel()
        lblInfo.textAlignment = .right
        lblInfo.font = UIFont.boldSystemFont(ofSize: 14)
        lblInfo.text = "Don't have an account?"
        
        let btn = UIButton()
        btn.setTitle("SignUp", for: .normal)
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
//        signInView.backgroundColor = .yellow
        
        signInView.btnSignIn.addTarget(self, action: #selector(btnSignInTapped), for: .touchUpInside)
        
    }
    
    @objc func btnTapped() {
        present(SignUpViewController(), animated: true)
    }
    
    @objc func btnSignInTapped() {
        SessionStore().signIn(email: signInView.txtFieldEmail.text ?? " ", password: signInView.txtFieldPassword.text ?? " ", handler: {(res, err) in
            if err != nil {
                print("Check email or password")
                return
            }
            print("200 ok")
            UIApplication.shared.delegate?.window??.rootViewController = UINavigationController(rootViewController: PostViewController())
            self.sceneDelegate().callPostViewController()
        })
        
    }
    
    

}
