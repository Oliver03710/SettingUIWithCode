//
//  ViewController.swift
//  SettingUIWithCode
//
//  Created by Junhee Yoon on 2022/08/17.
//

import UIKit

import SnapKit

class CodeBaseKakaoViewController: UIViewController {

    // MARK: - Properties
    
    let closeButton: UIButton = {
        let btn = UIButton()
        var configuration = UIButton.Configuration.borderless()
        btn.tintColor = .black
        btn.configuration = configuration
        
        btn.configurationUpdateHandler = { button in
            var config = button.configuration
            let configs = UIImage.SymbolConfiguration(pointSize: 20, weight: .regular, scale: .default)
            config?.image = UIImage(systemName: "xmark", withConfiguration: configs)
            button.configuration = config
        }
        
        return btn
    }()
    
    let giftButton: UIButton = {
        let btn = UIButton()
        var configuration = UIButton.Configuration.borderless()
        btn.tintColor = .black
        btn.configuration = configuration

        btn.configurationUpdateHandler = { button in
            var config = button.configuration
            let configs = UIImage.SymbolConfiguration(pointSize: 28, weight: .thin, scale: .default)
            config?.image = button.isHighlighted ? UIImage(systemName: "gift.circle.fill", withConfiguration: configs) : UIImage(systemName: "gift.circle", withConfiguration: configs)
            button.configuration = config
        }

        return btn
    }()

    let transferButton: UIButton = {
        let btn = UIButton()
        var configuration = UIButton.Configuration.borderless()
        btn.tintColor = .black
        btn.configuration = configuration

        btn.configurationUpdateHandler = { button in
            var config = button.configuration
            let configs = UIImage.SymbolConfiguration(pointSize: 28, weight: .thin, scale: .default)
            config?.image = button.isHighlighted ? UIImage(systemName: "die.face.5.fill", withConfiguration: configs) : UIImage(systemName: "die.face.5", withConfiguration: configs)
            button.configuration = config
        }

        return btn
    }()
    
    let settingButton: UIButton = {
        let btn = UIButton()
        var configuration = UIButton.Configuration.borderless()
        btn.tintColor = .black
        btn.configuration = configuration

        btn.configurationUpdateHandler = { button in
            var config = button.configuration
            let configs = UIImage.SymbolConfiguration(pointSize: 28, weight: .thin, scale: .default)
            config?.image = button.isHighlighted ? UIImage(systemName: "gearshape.circle.fill", withConfiguration: configs) : UIImage(systemName: "gearshape.circle", withConfiguration: configs)
            button.configuration = config
        }
        
        return btn
    }()
    
    let editingButton: UIButton = {
        let btn = UIButton()
        var configuration = UIButton.Configuration.borderless()
        configuration.subtitle = "프로필 편집"
        configuration.imagePlacement = .top
        configuration.imagePadding = 5
        configuration.titleAlignment = .center
        btn.tintColor = .black
        let config = UIImage.SymbolConfiguration(pointSize: 24, weight: .thin, scale: .default)
        btn.setImage(UIImage(systemName: "pencil", withConfiguration: config), for: .normal)
        
        
        btn.configuration = configuration
        
        return btn
    }()
    
    let chattingButton: UIButton = {
        let btn = UIButton()
        var configuration = UIButton.Configuration.borderless()
        configuration.subtitle = "나와의 채팅"
        configuration.imagePlacement = .top
        configuration.imagePadding = 5
        configuration.titleAlignment = .center
        btn.tintColor = .black
        let config = UIImage.SymbolConfiguration(pointSize: 24, weight: .thin, scale: .default)
        btn.setImage(UIImage(systemName: "bubble.left.fill", withConfiguration: config), for: .normal)
        
        btn.configuration = configuration
        
        return btn
    }()
    
    let storyButton: UIButton = {
        let btn = UIButton()
        var configuration = UIButton.Configuration.borderless()
        configuration.subtitle = "카카오스토리"
        configuration.imagePlacement = .top
        configuration.imagePadding = 5
        configuration.titleAlignment = .center
        btn.tintColor = .black
        let config = UIImage.SymbolConfiguration(pointSize: 24, weight: .thin, scale: .default)
        btn.setImage(UIImage(systemName: "quote.closing", withConfiguration: config), for: .normal)
        
        
        btn.configuration = configuration
        
        return btn
    }()
    
    let lineView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 20)
        label.textColor = .black
        label.text = "성이름"
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 15)
        label.textColor = .darkGray
        label.text = "집에 가고 싶다."
        return label
    }()
    
    let profileImageView: UIImageView = {
        let iv = UIImageView()
        iv.layer.masksToBounds = true
        iv.layer.cornerRadius = 35
        iv.image = UIImage(systemName: "applelogo")
        iv.backgroundColor = .white
        return iv
    }()
    
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    
    // MARK: - Helper Functions
    
    func configureUI() {
        
        view.backgroundColor = .systemBrown
        
        [closeButton, giftButton, transferButton, settingButton, editingButton, chattingButton, storyButton, lineView, descriptionLabel, nameLabel, profileImageView].forEach { view.addSubview($0) }
        
        closeButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
            make.leadingMargin.equalTo(4)
            make.height.equalTo(40)
            make.width.equalTo(40)
        }
        
        giftButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
            make.trailing.equalTo(transferButton.snp.leading).offset(-10)
            make.height.equalTo(40)
            make.width.equalTo(40)
        }

        transferButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
            make.trailing.equalTo(settingButton.snp.leading).offset(-10)
            make.height.equalTo(40)
            make.width.equalTo(40)
        }
        
        settingButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
            make.trailingMargin.equalTo(-10)
            make.height.equalTo(40)
            make.width.equalTo(40)
        }
        
        editingButton.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-50)
            make.height.equalTo(60)
            make.width.equalTo(90)
        }
        
        chattingButton.snp.makeConstraints { make in
            make.trailing.equalTo(editingButton.snp.leading).offset(-20)
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-50)
            make.height.equalTo(60)
            make.width.equalTo(90)
        }
        
        storyButton.snp.makeConstraints { make in
            make.leading.equalTo(editingButton.snp.trailing).offset(20)
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-50)
            make.height.equalTo(60)
            make.width.equalTo(100)
        }
        
        lineView.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.bottom.equalTo(editingButton.snp.top).offset(-20)
            make.height.equalTo(1)
            make.width.equalTo(UIScreen.main.bounds.width)
        }
        
        descriptionLabel.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.bottom.equalTo(lineView.snp.top).offset(-30)
            make.height.equalTo(20)
            make.width.equalTo(UIScreen.main.bounds.width)
        }
        
        nameLabel.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.bottom.equalTo(descriptionLabel.snp.top).offset(-5)
            make.height.equalTo(25)
            make.width.equalTo(UIScreen.main.bounds.width)
        }
        
        profileImageView.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.bottom.equalTo(nameLabel.snp.top).offset(-10)
            make.height.equalTo(80)
            make.width.equalTo(80)
        }
    }
    
}

