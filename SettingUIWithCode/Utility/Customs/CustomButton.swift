//
//  CustomButton.swift
//  SettingUIWithCode
//
//  Created by Junhee Yoon on 2022/08/21.
//

import UIKit

class CustomButton: UIButton {
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(title: String, fontSize: CGFloat, titleColor: UIColor) {
        self.init()
        self.setTitle(title, for: .normal)
        self.backgroundColor = .white
        self.setTitleColor(titleColor, for: .normal)
        self.titleLabel?.font = .boldSystemFont(ofSize: fontSize)
        self.clipsToBounds = true
        self.layer.cornerRadius = 10
    }
    
}
    
