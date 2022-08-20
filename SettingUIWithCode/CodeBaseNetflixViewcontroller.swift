//
//  CodeBaseNetflixViewcontroller.swift
//  SettingUIWithCode
//
//  Created by Junhee Yoon on 2022/08/20.
//

import UIKit
import SnapKit

class CodeBaseNetflixViewcontroller: BaseViewController {
    
    // MARK: - Properties
    
    var netflixView = NetflixView()
    
    // MARK: - Init
    
    override func loadView() {
        self.view = netflixView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // MARK: - Helper Functions
    
    override func configureUI() {
        
    }
    
    
}
