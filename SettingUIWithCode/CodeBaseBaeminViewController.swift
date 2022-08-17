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
        sb.layer.shadowOffset = CGSize(width: -0.5, height: 0.5)
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
    
    let smileButton: UIButton = {
        let btn = UIButton()
        var configuration = UIButton.Configuration.borderless()
        configuration.imagePlacement = .leading
        configuration.imagePadding = 5
        btn.tintColor = .white
        let config = UIImage.SymbolConfiguration(pointSize: 24, weight: .semibold, scale: .default)
        btn.setImage(UIImage(systemName: "face.smiling", withConfiguration: config), for: .normal)
        
        btn.configuration = configuration
        
        return btn
    }()
    
    let notiButton: UIButton = {
        let btn = UIButton()
        var configuration = UIButton.Configuration.borderless()
        configuration.imagePlacement = .leading
        configuration.imagePadding = 5
        btn.tintColor = .white
        let config = UIImage.SymbolConfiguration(pointSize: 24, weight: .semibold, scale: .default)
        btn.setImage(UIImage(systemName: "bell", withConfiguration: config), for: .normal)
        
        btn.configuration = configuration
        
        return btn
    }()
    
    let titleButton: UIButton = {
        let btn = UIButton()
        var configuration = UIButton.Configuration.borderless()
        configuration.imagePlacement = .trailing
        configuration.imagePadding = 5
        configuration.titleAlignment = .center
        btn.tintColor = .white
        let config = UIImage.SymbolConfiguration(pointSize: 16, weight: .semibold, scale: .default)
        btn.setImage(UIImage(systemName: "chevron.down", withConfiguration: config), for: .normal)
        var attText = AttributedString.init("회사")
        attText.font = UIFont.systemFont(ofSize: 16.0, weight: .heavy)
        configuration.attributedTitle = attText
        
        btn.configuration = configuration
        
        return btn
    }()
    
    let gridButton: UIButton = {
        let btn = UIButton()
        var configuration = UIButton.Configuration.borderless()
        configuration.imagePlacement = .leading
        configuration.imagePadding = 5
        btn.tintColor = .white
        let config = UIImage.SymbolConfiguration(pointSize: 24, weight: .semibold, scale: .default)
        btn.setImage(UIImage(systemName: "rectangle.grid.2x2", withConfiguration: config), for: .normal)
        
        btn.configuration = configuration
        
        return btn
    }()
    
    let deliveryButton: UIButton = {
        let btn = UIButton()
        var configuration = UIButton.Configuration.borderless()
        configuration.imagePlacement = .trailing
        configuration.imagePadding = 5
        configuration.titleAlignment = .center
        btn.tintColor = .systemGray3
//        btn.backgroundColor = .red
        let config = UIImage.SymbolConfiguration(pointSize: 16, weight: .semibold, scale: .default)
        btn.setImage(UIImage(systemName: "chevron.right", withConfiguration: config), for: .normal)
        var attText = AttributedString.init("배달")
        attText.font = UIFont.systemFont(ofSize: 28, weight: .black)
        attText.foregroundColor = UIColor.black
        configuration.attributedTitle = attText
        
        btn.configuration = configuration
        
        return btn
    }()
    
    lazy var deliveryView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemMint
        view.layer.cornerRadius = 10
        view.clipsToBounds = true
        return view
    }()
    
    lazy var deliveryOneView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemMint
        view.layer.cornerRadius = 10
        view.clipsToBounds = true
        return view
    }()
    
    let deliveryOneButton: UIButton = {
        let btn = UIButton()
        var configuration = UIButton.Configuration.borderless()
        configuration.imagePlacement = .trailing
        configuration.imagePadding = 5
        configuration.titleAlignment = .center
        btn.tintColor = .systemGray3
//        btn.backgroundColor = .red
        let config = UIImage.SymbolConfiguration(pointSize: 16, weight: .semibold, scale: .default)
        btn.setImage(UIImage(systemName: "chevron.right", withConfiguration: config), for: .normal)
        var attText = AttributedString.init("배달1")
        attText.font = UIFont.systemFont(ofSize: 28, weight: .black)
        attText.foregroundColor = UIColor.black
        configuration.attributedTitle = attText
        
        btn.configuration = configuration
        
        return btn
    }()
    
    lazy var takeAwayView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemMint
        view.layer.cornerRadius = 10
        view.clipsToBounds = true
        return view
    }()
    
    let takeAwayButton: UIButton = {
        let btn = UIButton()
        var configuration = UIButton.Configuration.borderless()
        configuration.imagePlacement = .trailing
        configuration.imagePadding = 5
        configuration.titleAlignment = .center
        btn.tintColor = .systemGray3
//        btn.backgroundColor = .red
        let config = UIImage.SymbolConfiguration(pointSize: 16, weight: .semibold, scale: .default)
        btn.setImage(UIImage(systemName: "chevron.right", withConfiguration: config), for: .normal)
        var attText = AttributedString.init("포장")
        attText.font = UIFont.systemFont(ofSize: 28, weight: .black)
        attText.foregroundColor = UIColor.black
        configuration.attributedTitle = attText
        
        btn.configuration = configuration
        
        return btn
    }()
    
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    
    // MARK: - Helper Functions
    
    func configureUI() {
        
        [bottomStackView, naviView, deliveryView, deliveryOneView, takeAwayView].forEach { view.addSubview($0) }
        [searchBar, smileButton, notiButton, titleButton, gridButton].forEach { naviView.addSubview($0) }
        deliveryView.addSubview(deliveryButton)
        deliveryOneView.addSubview(deliveryOneButton)
        takeAwayView.addSubview(takeAwayButton)

        bottomStackView.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-10)
            make.centerX.equalTo(view)
            make.height.equalTo(10)
            make.width.equalTo(UIScreen.main.bounds.width - 30)
        }
        
        [lineView, lineView2, lineView3].forEach { $0.snp.makeConstraints { make in
            make.width.equalTo(1)
        } }
        
        naviView.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top)
            make.width.equalTo(UIScreen.main.bounds.width)
            make.centerX.equalTo(view)
            make.height.equalTo(view).multipliedBy(0.18)
        }
        
        searchBar.snp.makeConstraints { make in
            make.bottom.equalTo(naviView.snp.bottom).offset(-15)
            make.width.equalTo(UIScreen.main.bounds.width - 40)
            make.centerX.equalTo(view)
            make.height.equalTo(44)
        }
        
        smileButton.snp.makeConstraints { make in
            make.bottom.equalTo(searchBar.snp.top).offset(-8)
            make.trailing.equalTo(searchBar.snp.trailing)
            make.width.equalTo(32)
            make.height.equalTo(smileButton.snp.width).multipliedBy(1)
        }
        
        notiButton.snp.makeConstraints { make in
            make.bottom.equalTo(searchBar.snp.top).offset(-8)
            make.trailing.equalTo(smileButton.snp.leading).offset(-10)
            make.width.equalTo(32)
            make.height.equalTo(notiButton.snp.width).multipliedBy(1)
        }
        
        titleButton.snp.makeConstraints { make in
            make.bottom.equalTo(searchBar.snp.top).offset(-8)
            make.centerX.equalTo(view)
            make.width.equalTo(32)
            make.height.equalTo(titleButton.snp.width).multipliedBy(1)
        }
        
        gridButton.snp.makeConstraints { make in
            make.bottom.equalTo(searchBar.snp.top).offset(-8)
            make.leading.equalTo(searchBar.snp.leading)
            make.width.equalTo(32)
            make.height.equalTo(gridButton.snp.width).multipliedBy(1)
        }
        
        deliveryView.snp.makeConstraints { make in
            make.top.equalTo(naviView.snp.bottom).offset(16)
            make.trailing.equalTo(-(UIScreen.main.bounds.width / 2) - 8)
            make.width.equalTo((UIScreen.main.bounds.width / 2) - 24)
            make.height.equalTo(deliveryView.snp.width).multipliedBy(0.9)
        }
        
        deliveryButton.snp.makeConstraints { make in
            make.top.equalTo(deliveryView.snp.top).offset(8)
            make.leading.equalTo(deliveryView.snp.leading).offset(8)
            make.width.equalTo(90)
            make.height.equalTo(50)
        }
        
        deliveryOneView.snp.makeConstraints { make in
            make.top.equalTo(naviView.snp.bottom).offset(16)
            make.leading.equalTo(deliveryView.snp.trailing).offset(16)
            make.width.equalTo((UIScreen.main.bounds.width / 2) - 24)
            make.height.equalTo(deliveryOneView.snp.width).multipliedBy(0.9)
        }
        
        deliveryOneButton.snp.makeConstraints { make in
            make.top.equalTo(deliveryOneView.snp.top).offset(8)
            make.leading.equalTo(deliveryOneView.snp.leading).offset(8)
            make.width.equalTo(120)
            make.height.equalTo(50)
        }
        
        takeAwayView.snp.makeConstraints { make in
            make.top.equalTo(deliveryView.snp.bottom).offset(16)
            make.centerX.equalTo(view)
            make.width.equalTo(UIScreen.main.bounds.width - 32)
            make.height.equalTo(deliveryOneView.snp.width).multipliedBy(0.6)
        }
        
        takeAwayButton.snp.makeConstraints { make in
            make.top.equalTo(takeAwayView.snp.top).offset(8)
            make.leading.equalTo(takeAwayView.snp.leading).offset(8)
            make.width.equalTo(90)
            make.height.equalTo(50)
        }
        
    }
    
}
