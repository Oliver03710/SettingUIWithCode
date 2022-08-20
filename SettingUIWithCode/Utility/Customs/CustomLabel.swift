//
//  CustomLabel.swift
//  SettingUIWithCode
//
//  Created by Junhee Yoon on 2022/08/21.
//

import UIKit

class CustomLabel: UILabel {
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(_ text: String, textColor: UIColor, textSize: CGFloat, textAlignment: NSTextAlignment) {
        self.init()
        self.text = text
        self.textColor = textColor
        self.font = .boldSystemFont(ofSize: textSize)
        self.textAlignment = textAlignment

    }

}
