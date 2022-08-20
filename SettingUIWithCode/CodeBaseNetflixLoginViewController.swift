//
//  CodeBaseNetflixLoginViewController.swift
//  SettingUIWithCode
//
//  Created by Junhee Yoon on 2022/08/21.
//

import UIKit

class CodeBaseNetflixLoginViewController: BaseViewController {
    
    // MARK: - Properties
    
    var netflixLoginView = NetflixLoginView()
    
    // MARK: - Init
    
    override func loadView() {
        self.view = netflixLoginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // MARK: - Helper Functions
    
    override func configureUI() {
        
    }
    
    
}
