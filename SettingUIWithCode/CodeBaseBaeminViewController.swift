//
//  CodeBaseBaeminViewController.swift
//  SettingUIWithCode
//
//  Created by Junhee Yoon on 2022/08/17.
//

import UIKit

import SnapKit

class CodeBaseBaeminViewController: UIViewController {

    // MARK: - Properties
    
    let pointButton: UIButton = {
        let btn = UIButton()
        var configuration = UIButton.Configuration.borderless()
        configuration.subtitle = "포인트"
        configuration.imagePlacement = .leading
        configuration.imagePadding = 5
        configuration.titleAlignment = .center
        btn.tintColor = .black
        let config = UIImage.SymbolConfiguration(pointSize: 15, weight: .thin, scale: .default)
        btn.setImage(UIImage(systemName: "p.circle", withConfiguration: config), for: .normal)
        
        btn.configuration = configuration
        
        return btn
    }()
    
    let couponButton: UIButton = {
        let btn = UIButton()
        var configuration = UIButton.Configuration.borderless()
        configuration.subtitle = "쿠폰함"
        configuration.imagePlacement = .leading
        configuration.imagePadding = 5
        configuration.titleAlignment = .center
        btn.tintColor = .black
        let config = UIImage.SymbolConfiguration(pointSize: 15, weight: .thin, scale: .default)
        btn.setImage(UIImage(systemName: "ticket", withConfiguration: config), for: .normal)
        
        btn.configuration = configuration
        
        return btn
    }()
    
    let giftButton: UIButton = {
        let btn = UIButton()
        var configuration = UIButton.Configuration.borderless()
        configuration.subtitle = "선물함"
        configuration.imagePlacement = .leading
        configuration.imagePadding = 5
        configuration.titleAlignment = .center
        btn.tintColor = .black
        let config = UIImage.SymbolConfiguration(pointSize: 15, weight: .thin, scale: .default)
        btn.setImage(UIImage(systemName: "gift", withConfiguration: config), for: .normal)
        
        btn.configuration = configuration
        
        return btn
    }()
    
    let likeButton: UIButton = {
        let btn = UIButton()
        var configuration = UIButton.Configuration.borderless()
        configuration.subtitle = "찜"
        configuration.imagePlacement = .leading
        configuration.imagePadding = 5
        configuration.titleAlignment = .center
        btn.tintColor = .black
        let config = UIImage.SymbolConfiguration(pointSize: 15, weight: .thin, scale: .default)
        btn.setImage(UIImage(systemName: "heart", withConfiguration: config), for: .normal)
        
        btn.configuration = configuration
        
        return btn
    }()
    
    let lineView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    let lineView2: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    let lineView3: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    lazy var bottomStackView: UIStackView = {
        let sv = UIStackView(arrangedSubviews: [pointButton, lineView, couponButton, lineView2, giftButton, lineView3, likeButton])
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.axis = .horizontal
        sv.spacing = 5
        sv.distribution = .equalSpacing
        return sv
    }()
    
    let searchBar: UISearchBar = {
        let sb = UISearchBar()
        sb.searchTextField.backgroundColor = .white
        sb.placeholder = "포케? 돈까스? 커리?"
        sb.searchTextField.textColor = .darkGray
        sb.layer.masksToBounds = false
        sb.layer.shadowOpacity = 0.5
        sb.layer.shadowOffset = CGSize(width: -1, height: 1)
        sb.layer.shadowRadius = 1
        sb.searchTextField.leftView?.tintColor = .systemMint
        sb.backgroundColor = .white
        return sb
    }()
    
    let naviView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemMint
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        return view
    }()
    
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    
    // MARK: - Helper Functions
    
    func configureUI() {
        
        [bottomStackView, naviView].forEach { view.addSubview($0) }
        naviView.addSubview(searchBar)
        
        bottomStackView.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-10)
            make.centerX.equalTo(view)
            make.height.equalTo(20)
            make.width.equalTo(UIScreen.main.bounds.width - 30)
        }
        
        lineView.snp.makeConstraints { make in
            make.height.equalTo(20)
            make.width.equalTo(1)
        }
        
        lineView2.snp.makeConstraints { make in
            make.height.equalTo(20)
            make.width.equalTo(1)
        }
        
        lineView3.snp.makeConstraints { make in
            make.height.equalTo(20)
            make.width.equalTo(1)
        }
        
        naviView.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top)
            make.width.equalTo(UIScreen.main.bounds.width)
            make.centerX.equalTo(view)
            make.height.equalTo(view).multipliedBy(0.18)
        }
        
//        searchBar.snp.makeConstraints { make in
//            make.bottom.equalTo(naviView.snp.bottom).offset(-15)
//            make.width.equalTo(UIScreen.main.bounds.width - 40)
//            make.centerX.equalTo(view)
//            make.height.equalTo(44)
//        }
        
        searchBar.anchor(top: nil, left: nil, bottom: -15, right: nil, paddingTop: 0, paddingLeft: 20, paddingBottom: <#T##CGFloat#>, paddingRight: <#T##CGFloat#>, width: <#T##CGFloat#>, height: <#T##CGFloat#>)
        
    }
    
}
