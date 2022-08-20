//
//  UpperCustomButtons.swift
//  SettingUIWithCode
//
//  Created by Junhee Yoon on 2022/08/20.
//

import UIKit

class UpperCustomButtons: UIButton {
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.tintColor = .white
    }
    
    convenience init(title: String, size: CGFloat) {
        self.init()
        self.setTitle(title, for: .normal)
        self.titleLabel?.font = .boldSystemFont(ofSize: UIScreen.main.bounds.width / size)
    }
    
}
