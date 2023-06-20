//
//  HomeScreen.swift
//  todoList
//
//  Created by ALYSSON DODO on 14/06/23.
//

import UIKit

protocol UnboardingProtocol: AnyObject {
    func tappedForwardButton()
}

class UnboardingScreen: UIView {

    private weak var delegate: UnboardingProtocol?
    
    public func delegate(delegate: UnboardingProtocol?){
        self.delegate = delegate
    }
    
    lazy var logoImageView : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage( named: "logo" )
        return image
    }()

    lazy var subImageView : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage( named: "homeBackgroundImage" )
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    lazy var welcomeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Bem Vindo!"
        label.textColor = UIColor(red: 10/255, green: 10/255, blue: 90/255, alpha: 1.0)
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 45, weight: .bold)
        return label
    }()

    lazy var forwardButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("começar", for: .normal)
        btn.backgroundColor = .clear
        btn.clipsToBounds = true
        btn.layer.cornerRadius =  8 //25.5
        btn.layer.shadowRadius = 10
        btn.layer.shadowOffset = CGSize(width: 0, height: 5)
        btn.layer.shadowOpacity = 0.3
        //btn.setImage(UIImage(systemName: "arrow.forward.circle.fill"), for: .normal)
        btn.tintColor = .white
        btn.isEnabled = true
        //btn.transform = .init(scaleX: 0.8, y: 0.8)// nasce com tamanho menor depois aumenta
        btn.addTarget(self, action: #selector(tappedforwardButton), for: .touchUpInside)
        return btn
    }()
    
    @objc func tappedforwardButton(){
        delegate?.tappedForwardButton()
    }
    
    private func addViews(){
        addSubview(subImageView)
        addSubview(logoImageView)
        addSubview(welcomeLabel)
        addSubview(forwardButton)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            
            subImageView.topAnchor.constraint(equalTo: topAnchor),
            subImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            subImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            subImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            logoImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            logoImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 60),
            logoImageView.heightAnchor.constraint(equalToConstant: 140),
            logoImageView.widthAnchor.constraint(equalToConstant: 140),
            
            welcomeLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            welcomeLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            welcomeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
            welcomeLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -35),
            
            forwardButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -60),
            forwardButton.leadingAnchor.constraint(equalTo: welcomeLabel.leadingAnchor),
            forwardButton.trailingAnchor.constraint(equalTo: welcomeLabel.trailingAnchor),
            forwardButton.heightAnchor.constraint(equalToConstant: 100)
            
        ])
    }
}
