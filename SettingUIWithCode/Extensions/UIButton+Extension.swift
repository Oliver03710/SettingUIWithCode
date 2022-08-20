//
//  UIButton+Extension.swift
//  SettingUIWithCode
//
//  Created by Junhee Yoon on 2022/08/21.
//

import UIKit

extension UIButton {
    
    func setButtonConfiguration(_ buttonConfiguration: UIButton.Configuration, subtitle: String, imagePosition: NSDirectionalRectEdge) {
        
        if buttonConfiguration == .filled() {
            
            var configuration = buttonConfiguration
            configuration.subtitle = subtitle
            configuration.imagePlacement = imagePosition
            configuration.imagePadding = 5
            configuration.titleAlignment = .center
            configuration.buttonSize = .medium
            configuration.baseBackgroundColor = .white
            configuration.baseForegroundColor = .black
            self.configuration = configuration
            
        } else {
            
            var configuration = buttonConfiguration
            configuration.subtitle = subtitle
            configuration.imagePlacement = imagePosition
            configuration.imagePadding = 5
            configuration.titleAlignment = .center
            self.configuration = configuration
            
        }
        
    }
    
    func setImageInButtonConfiguration(_ image: String) {
        let config = UIImage.SymbolConfiguration(pointSize: 20, weight: .regular, scale: .default)
        self.setImage(UIImage(systemName: image, withConfiguration: config), for: .normal)
    }
    
}
