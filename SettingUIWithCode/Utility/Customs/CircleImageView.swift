//
//  CircleImageView.swift
//  SettingUIWithCode
//
//  Created by Junhee Yoon on 2022/08/20.
//

import UIKit

class CircleImageView: UIImageView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.width / 2
        self.contentMode = .scaleAspectFill
        self.layer.borderWidth = 1.6
        self.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    convenience init(_ image: String, frame: CGRect) {
        self.init(frame: frame)
        self.image = UIImage(named: image)
    }

}
