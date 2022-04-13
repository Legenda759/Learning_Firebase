//
//  SignInView.swift
//  Learning_Alamofire
//
//  Created by Legenda_759 on 06/04/22.
//

import UIKit
import SnapKit


class SignInView: BaseView {
    
    let lblGreeting = UILabel()
//    let lblInfo = UILabel()
    let btnSignIn = UIButton()
//    let btnSignUp = UIButton()
    let txtFieldEmail = UITextField()
    let txtFieldPassword = UITextField()
    
    override func embedSubviews() {
        addSubview(lblGreeting)
//        addSubview(lblInfo)
        addSubview(btnSignIn)
//        addSubview(btnSignUp)
        addSubview(txtFieldEmail)
        addSubview(txtFieldPassword)
    }
    
    override func initSubviews() {
        
//        lblGreeting settings
        lblGreeting.textColor = .red
        lblGreeting.font = UIFont.systemFont(ofSize: 30)
        lblGreeting.text = "Welcome Back"
        lblGreeting.textAlignment = .center
        
//        lblInfo settings
     // lblInfo no settings
        
//        btnSignIn settings
        btnSignIn.backgroundColor = .red
        btnSignIn.layer.cornerRadius = 25
        btnSignIn.setTitle("Sign In", for: .normal)
        
//        btnSignUp settings
     // btnSignUp no settings
        
//        txtFieldEmail settings
        txtFieldEmail.placeholder = "Email"
        txtFieldEmail.font = UIFont.systemFont(ofSize: 14)
        txtFieldEmail.backgroundColor = .systemGray5
        txtFieldEmail.layer.cornerRadius = 25
        let leftVeiwView = UIView(frame: CGRect(x: 10, y: 0, width: 20, height: 20))
        txtFieldEmail.leftView = leftVeiwView
        txtFieldEmail.leftViewMode = .always
        
//        txtFieldPassword settings
        txtFieldPassword.placeholder = "Password"
        txtFieldPassword.backgroundColor = .systemGray5
        txtFieldPassword.layer.cornerRadius = 25
        let leftVeiwView1 = UIView(frame: CGRect(x: 10, y: 0, width: 20, height: 20))
        txtFieldPassword.leftView = leftVeiwView1
        txtFieldPassword.leftViewMode = .always
        txtFieldPassword.font = UIFont.systemFont(ofSize: 14)
        
    }
    
    override func addSubviewsConstraints() {
        
        lblGreeting.snp.makeConstraints { make in
            make.left.right.top.equalToSuperview().inset(10)
        }
        
        btnSignIn.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview().inset(10)
            make.top.equalTo(txtFieldPassword.snp.bottom).offset(10)
            make.height.equalTo(50)
        }
        
        txtFieldEmail.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(10)
            make.top.equalTo(lblGreeting.snp.bottom).offset(20)
            make.height.equalTo(50)
        }
        
        txtFieldPassword.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(10)
            make.top.equalTo(txtFieldEmail.snp.bottom).offset(10)
            make.height.equalTo(50)
        }
        
    }
    
}
