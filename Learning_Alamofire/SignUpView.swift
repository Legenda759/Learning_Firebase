//
//  File.swift
//  Learning_Alamofire
//
//  Created by Legenda_759 on 06/04/22.
//

import UIKit
import SnapKit


class SignUpView: BaseView {
    
    let lblGreeting = UILabel()
//    let lblInfo = UILabel()
    let btnSignUp = UIButton()
//    let btnSignUp = UIButton()
    let txtFieldEmail = UITextField()
    let txtFieldPassword = UITextField()
    let txtFieldFullName = UITextField()
    
    override func embedSubviews() {
        addSubview(lblGreeting)
//        addSubview(lblInfo)
        addSubview(btnSignUp)
//        addSubview(btnSignUp)
        addSubview(txtFieldEmail)
        addSubview(txtFieldPassword)
        addSubview(txtFieldFullName)
    }
    
    override func initSubviews() {
        
        let leftView = UIView(frame: CGRect(x: 10, y: 0, width: 20, height: 20))
        let leftView1 = UIView(frame: CGRect(x: 10, y: 0, width: 20, height: 20))
        let leftView2 = UIView(frame: CGRect(x: 10, y: 0, width: 20, height: 20))
        
//        lblGreeting settings
        lblGreeting.textColor = .red
        lblGreeting.font = UIFont.systemFont(ofSize: 30)
        lblGreeting.text = "Create your account"
        lblGreeting.textAlignment = .center
        
//        lblInfo settings
     // lblInfo no settings
        
//        btnSignIn settings
        btnSignUp.backgroundColor = .red
        btnSignUp.layer.cornerRadius = 25
        btnSignUp.setTitle("Sign Up", for: .normal)
        
//        btnSignUp settings
     // btnSignUp no settings
        
//        txtFieldEmail settings
        txtFieldEmail.placeholder = "Email"
        txtFieldEmail.backgroundColor = .systemGray5
        txtFieldEmail.layer.cornerRadius = 25
        
        txtFieldEmail.leftView = leftView
        txtFieldEmail.leftViewMode = .always
        txtFieldEmail.font = UIFont.systemFont(ofSize: 14)
        
//        txtFieldPassword settings
        txtFieldPassword.placeholder = "Password"
        txtFieldPassword.backgroundColor = .systemGray5
        txtFieldPassword.layer.cornerRadius = 25
        txtFieldPassword.leftView = leftView1
        txtFieldPassword.leftViewMode = .always
        txtFieldPassword.font = UIFont.systemFont(ofSize: 14)
        
//        txtFieldFullName settings
        
        txtFieldFullName.placeholder = "Full name"
        txtFieldFullName.backgroundColor = .systemGray5
        txtFieldFullName.layer.cornerRadius = 25
        txtFieldFullName.leftView = leftView2
        txtFieldFullName.leftViewMode = .always
        txtFieldFullName.font = UIFont.systemFont(ofSize: 14)
        
        
        
    }
    
    override func addSubviewsConstraints() {
        
        lblGreeting.snp.makeConstraints { make in
            make.left.right.top.equalToSuperview().inset(10)
        }
        
        btnSignUp.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview().inset(10)
            make.top.equalTo(txtFieldPassword.snp.bottom).offset(10)
            make.height.equalTo(50)
        }
        
        txtFieldEmail.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(10)
            make.top.equalTo(txtFieldFullName.snp.bottom).offset(10)
            make.height.equalTo(50)
        }
        
        txtFieldPassword.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(10)
            make.top.equalTo(txtFieldEmail.snp.bottom).offset(10)
            make.height.equalTo(50)
        }
        
        txtFieldFullName.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(10)
            make.top.equalTo(lblGreeting.snp.bottom).offset(20)
            make.height.equalTo(50)
        }
        
    }
    
}
