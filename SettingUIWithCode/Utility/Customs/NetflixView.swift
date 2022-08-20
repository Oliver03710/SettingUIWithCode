//
//  NetflixView.swift
//  SettingUIWithCode
//
//  Created by Junhee Yoon on 2022/08/20.
//

import UIKit
import SnapKit

class NetflixView: BaseView {
    
    // MARK: - Properties
    
    let movies = MovieData.movieArr.shuffled()
    
    let backgroundImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: MovieData.randomMovies[0])
        iv.contentMode = .scaleAspectFit
        return iv
    }()
    
    let tintView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.layer.opacity = 0.5
        return view
    }()
    
    let nButton: UpperCustomButtons = {
        let btn = UpperCustomButtons(title: "N", size: 10)
        return btn
    }()
    
    let tvProButton: UpperCustomButtons = {
        let btn = UpperCustomButtons(title: "TV프로그램", size: 26)
        return btn
    }()
    
    let movieButton: UpperCustomButtons = {
        let btn = UpperCustomButtons(title: "영화", size: 26)
        return btn
    }()
    
    let upperLikeContentsButton: UpperCustomButtons = {
        let btn = UpperCustomButtons(title: "내가 찜한 컨텐츠", size: 26)
        return btn
    }()
    
    lazy var upperButtonStackView: CustomStackView = {
        let sv = CustomStackView(arrangedSubviews: [tvProButton, movieButton, upperLikeContentsButton], axis: .horizontal, spacing: 40, distribution: .fillProportionally)
        return sv
    }()
    
    let lowerLikeContentsButton: UIButton = {
        let btn = UIButton()
        btn.setButtonConfiguration(.borderless(), subtitle: "내가 찜한 컨텐츠", imagePosition: .top)
        btn.tintColor = .white
        btn.setImageInButtonConfiguration("checkmark")
        return btn
    }()
    
    let playButton: UIButton = {
        let btn = UIButton()
        btn.setButtonConfiguration(.filled(), subtitle: "재생", imagePosition: .leading)
        btn.setImageInButtonConfiguration("play.fill")
        return btn
    }()
    
    let infoButton: UIButton = {
        let btn = UIButton()
        btn.setButtonConfiguration(.borderless(), subtitle: "정보", imagePosition: .top)
        btn.tintColor = .white
        btn.setImageInButtonConfiguration("info.circle")
        return btn
    }()
    
    lazy var lowerButtonStackView: CustomStackView = {
        let sv = CustomStackView(arrangedSubviews: [lowerLikeContentsButton, playButton, infoButton], axis: .horizontal, spacing: 20, distribution: .fillEqually)
        return sv
    }()
    
    let previewLabel: CustomLabel = {
        let label = CustomLabel("미리보기", textColor: .white, textSize: 16, textAlignment: .left)
        return label
    }()
    
    let leftCircleView: CircleImageView = {
        let iv = CircleImageView(MovieData.randomMovies[1], frame: .zero)
        return iv
    }()
    
    let centerCircleView: CircleImageView = {
        let iv = CircleImageView(MovieData.randomMovies[2], frame: .zero)
        return iv
    }()
    
    let rightPreviewImageView: CircleImageView = {
        let iv = CircleImageView(MovieData.randomMovies[3], frame: .zero)
        return iv
    }()
    
    lazy var circleStackView: CustomStackView = {
        let sv = CustomStackView(arrangedSubviews: [leftCircleView, centerCircleView, rightPreviewImageView], axis: .horizontal, spacing: 30, distribution: .fillEqually)
        return sv
    }()
    
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .black
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - Helper Functions
    
    override func configureUI() {
        [backgroundImageView, tintView, nButton, upperButtonStackView, lowerButtonStackView, previewLabel, circleStackView].forEach { self.addSubview($0) }
        
    }
    
    override func setConstraints() {
        
        backgroundImageView.snp.makeConstraints { make in
            make.top.equalTo(self.snp.top)
            make.leading.trailing.equalTo(self.safeAreaLayoutGuide)
            make.height.equalTo(self.snp.height).multipliedBy(0.8)
        }
        
        tintView.snp.makeConstraints { make in
            make.top.equalTo(self.snp.top)
            make.leading.trailing.equalTo(self.safeAreaLayoutGuide)
            make.bottom.equalTo(self.snp.bottom)
        }
        
        nButton.snp.makeConstraints { make in
            make.top.equalTo(tintView.snp.top).offset(UIScreen.main.bounds.height / 10)
            make.leading.equalTo(tintView.snp.leading).offset(8)
            make.height.equalTo(UIScreen.main.bounds.width / 10)
            make.width.equalTo(nButton.snp.height).multipliedBy(1)
        }
        
        upperButtonStackView.snp.makeConstraints { make in
            make.top.equalTo(tintView.snp.top).offset(UIScreen.main.bounds.height / 8.3)
            make.leading.equalTo(nButton.snp.trailing).offset(8)
            make.trailing.equalTo(self.safeAreaLayoutGuide).offset(-8)
            make.height.equalTo(UIScreen.main.bounds.width / 26)
        }
        
        lowerButtonStackView.snp.makeConstraints { make in
            make.top.equalTo(tintView.snp.top).offset(UIScreen.main.bounds.height / 1.45)
            make.leading.equalTo(self.safeAreaLayoutGuide).offset(8)
            make.trailing.equalTo(self.safeAreaLayoutGuide).offset(-8)
            make.height.equalTo(UIScreen.main.bounds.width / 14)
        }
        
        playButton.snp.makeConstraints { make in
            make.width.equalTo(UIScreen.main.bounds.width / 3.5)
        }
        
        circleStackView.snp.makeConstraints { make in
            make.bottom.equalTo(self.safeAreaLayoutGuide)
            make.centerX.equalTo(self)
            make.width.equalTo(UIScreen.main.bounds.width - 30)
            make.height.equalTo((UIScreen.main.bounds.width - 30 - (UIScreen.main.bounds.width / 30)) / 3)
        }
        
        previewLabel.snp.makeConstraints { make in
            make.bottom.equalTo(circleStackView.snp.top).offset(-8)
            make.leading.equalTo(circleStackView.snp.leading)
            make.width.equalTo(80)
            make.height.equalTo(25)
        }
        
    }
    
}
