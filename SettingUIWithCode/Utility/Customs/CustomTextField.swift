//
//  CustomTextField.swift
//  SettingUIWithCode
//
//  Created by Junhee Yoon on 2022/08/21.
//

import UIKit

class CustomTextField: UITextField {
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(placeHolder: String, keyboardType: UIKeyboardType) {
        self.init()
        self.backgroundColor = .darkGray
        self.attributedPlaceholder = NSAttributedString(string: placeHolder, attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        self.clipsToBounds = true
        self.layer.cornerRadius = 10
        self.textAlignment = .center
        self.font = .systemFont(ofSize: 14)
        self.textColor = .systemGreen
        self.autocorrectionType = .no
        self.autocapitalizationType = .none
        self.keyboardType = keyboardType
    }

}
