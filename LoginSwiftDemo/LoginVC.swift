//
//  LoginVC.swift
//  LoginSwiftDemo
//
//  Created by JFQ on 2017/11/21.
//  Copyright © 2017年 Feroo. All rights reserved.
//

import UIKit
import ReactiveCocoa
import ReactiveSwift
import SnapKit

class LoginVC: UIViewController {
    
    var userNameTF : UITextField = UITextField()
    var passwordTF : UITextField = UITextField()
    var loginBtn : UIButton = UIButton();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupSubviews()
        
        //合并信号 -- 如果用户名长度大于0，密码长度大于等于6，返回@(1), 否则返回@(0)
//        let validUsernameSignal = userNameTF.reactive.continuousTextValues.map({
//            text in
//
//            return text > 0 ? 1 : 0
//        })
//        let validPasswordSignal = passwordTF.reactive.continuousTextValues.map({
//            text in
//
//            return  return text >= 6 ? 1 : 0
//        })
//        let signUpActiveSignal = Signal.combineLatest(validUsernameSignal, validPasswordSignal)
        
//        let combineSignal = Signal.combineLatest(userNameTF.reactive.continuousTextValues, passwordTF.reactive.continuousTextValues)
//        combineSignal.map({(userNameText, passwordText) in
//
//            return userNameText.length > 0 && passwordText.length >= 6
//        })
//            .map { (userNameText, passwordText) in
//                return userNameText.length > 0 && passwordText.length >= 6
//        }
    }

    
    

    // MARK: - 布局
    func setupSubviews() {
        let userNameL : UILabel = UILabel()
        let passwordL : UILabel = UILabel()
        self.view.addSubview(userNameL)
        self.view.addSubview(passwordL)
        self.view.addSubview(userNameTF)
        self.view.addSubview(passwordTF)
        self.view.addSubview(loginBtn)
        
        userNameL.text = "用户名"
        userNameL.backgroundColor = UIColor.green
        userNameL.textAlignment = .right
        passwordL.text = "密码"
        passwordL.textAlignment = .right
        passwordL.backgroundColor = UIColor.green
        userNameTF.backgroundColor = UIColor.blue
        passwordTF.backgroundColor = UIColor.blue
        loginBtn.backgroundColor = UIColor.groupTableViewBackground
        loginBtn.setTitle("登陆", for: .normal)
        
        userNameL.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(20)
            make.top.equalToSuperview().offset(100)
            make.width.equalTo(70)
            make.height.equalTo(30)
        }
        passwordL.snp.makeConstraints { (make) in
            make.left.equalTo(userNameL.snp.left)
            make.top.equalTo(userNameL.snp.bottom).offset(20)
            make.width.equalTo(70)
            make.height.equalTo(30)
        }
        userNameTF.snp.makeConstraints { (make) in
            make.top.equalTo(userNameL.snp.top)
            make.left.equalTo(userNameL.snp.right).offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(30)
        }
        passwordTF.snp.makeConstraints { (make) in
            make.top.equalTo(userNameTF.snp.bottom).offset(20)
            make.left.equalTo(userNameTF.snp.left)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(30)
        }
        loginBtn.snp.makeConstraints { (make) in
            make.top.equalTo(passwordTF.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(130)
            make.right.equalToSuperview().offset(-130)
            make.height.equalTo(30)
        }
        


    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
