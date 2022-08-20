//
//  CustomStackView.swift
//  SettingUIWithCode
//
//  Created by Junhee Yoon on 2022/08/21.
//

import UIKit

class CustomStackView: UIStackView {
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.tintColor = .white
    }
    
    convenience init(arrangedSubviews views: [UIView], axis: NSLayoutConstraint.Axis, size: CGFloat, distribution: UIStackView.Distribution) {
        self.init()
        views.forEach { self.addArrangedSubview($0) }
        self.axis = axis
        self.spacing = UIScreen.main.bounds.width / size
        self.distribution = distribution

    }
    

    
}
