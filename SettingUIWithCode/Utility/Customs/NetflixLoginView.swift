//
//  NetflixLoginView.swift
//  SettingUIWithCode
//
//  Created by Junhee Yoon on 2022/08/21.
//

import UIKit
import SnapKit

class NetflixLoginView: BaseView {
    
    // MARK: - Properties
    
    let titleLabel: CustomLabel = {
        let label = CustomLabel("JACKFLIX", textColor: .red, textSize: 40, textAlignment: .center)
        return label
    }()
    
    let emailTextField: CustomTextField = {
        let tf = CustomTextField(placeHolder: "이메일 주소 또는 전화번호", keyboardType: .default)
        return tf
    }()
    
    let passwordTextField: CustomTextField = {
        let tf = CustomTextField(placeHolder: "비밀번호", keyboardType: .default)
        return tf
    }()
    
    let nicknameTextField: CustomTextField = {
        let tf = CustomTextField(placeHolder: "닉네임", keyboardType: .default)
        return tf
    }()
    
    let locationTextField: CustomTextField = {
        let tf = CustomTextField(placeHolder: "위치", keyboardType: .default)
        return tf
    }()
    
    let referralCodeTextField: CustomTextField = {
        let tf = CustomTextField(placeHolder: "추천 코드 입력", keyboardType: .numberPad)
        return tf
    }()
    
    let signUpButton: CustomButton = {
        let tf = CustomButton(title: "회원가입", fontSize: 16, titleColor: .black)
        return tf
    }()
    
    lazy var textFieldStackView: CustomStackView = {
        let sv = CustomStackView(arrangedSubviews: [emailTextField, passwordTextField, nicknameTextField, locationTextField, referralCodeTextField, signUpButton], axis: .vertical, spacing: 25, distribution: .equalSpacing)
        return sv
    }()
    
    let additionalInfoLabel: CustomLabel = {
        let label = CustomLabel("추가 정보 입력", textColor: .white, textSize: 16, textAlignment: .left)
        return label
    }()
    
    let additionalInfoSwitch: UISwitch = {
        let swch = UISwitch()
        swch.isOn = true
        swch.onTintColor = .red
        return swch
    }()
    
    lazy var additionalInfoStackView: CustomStackView = {
        let sv = CustomStackView(arrangedSubviews: [additionalInfoLabel, additionalInfoSwitch], axis: .horizontal, spacing: 50, distribution: .equalSpacing)
        sv.alignment = .center
        return sv
    }()
    
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .black
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - Helper Functions
    
    override func configureUI() {
        [titleLabel, textFieldStackView, additionalInfoStackView].forEach { self.addSubview($0) }
    }
    
    override func setConstraints() {
        
        titleLabel.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.centerY.equalTo(self).multipliedBy(0.3)
            make.height.equalTo(60)
            make.width.equalTo(UIScreen.main.bounds.width)
        }
        
        textFieldStackView.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.centerY.equalTo(self)
            make.width.equalTo(UIScreen.main.bounds.width - 80)
        }
        
        [emailTextField, passwordTextField, nicknameTextField, locationTextField, referralCodeTextField].forEach { $0.snp.makeConstraints { make in
            make.height.equalTo(40)
        }
        }
        
        signUpButton.snp.makeConstraints { make in
            make.height.equalTo(48)
        }
        
        additionalInfoStackView.snp.makeConstraints { make in
            make.top.equalTo(textFieldStackView.snp.bottom).offset(UIScreen.main.bounds.width / 20)
            make.leading.equalTo(textFieldStackView.snp.leading)
            make.trailing.equalTo(textFieldStackView.snp.trailing)
            make.height.equalTo(40)
        }
        
        additionalInfoLabel.snp.makeConstraints { make in
            make.height.equalTo(20)
        }
        
    }
    
}

