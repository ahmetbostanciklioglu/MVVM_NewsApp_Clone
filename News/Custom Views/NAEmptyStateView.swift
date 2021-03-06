//
//  NAEmptyStateView.swift
//  News
//
//  Created by Ahmet Bostancıklıoğlu on 8.07.2022.
//

import UIKit

class NAEmptyStateView: UIView {
    
    let messageLabel = NATitleLabel(textAlignment: .center, fontSize: 28, lineBreakMode: .byTruncatingTail)
    let logoImageView = UIImageView()

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(message: String) {
        super.init(frame: .zero)
        messageLabel.text = message
        configure()
    }
    
    private func configure() {
        addSubview(messageLabel)
        addSubview(logoImageView)
        
        messageLabel.numberOfLines = 5
        messageLabel.textColor = .secondaryLabel
        
        logoImageView.image = UIImage(named: "empty-state-logo")
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            messageLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -150),
            messageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40),
            messageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),
            messageLabel.heightAnchor.constraint(equalToConstant: 200),
            
            //logoImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 150),
            logoImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            logoImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40),
            logoImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),
            logoImageView.heightAnchor.constraint(equalToConstant: 300),
            logoImageView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -50)
            
        ])
    }
}

