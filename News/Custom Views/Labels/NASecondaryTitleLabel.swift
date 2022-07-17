//
//  NASecondaryTitleLabel.swift
//  News
//
//  Created by Ahmet Bostancıklıoğlu on 8.07.2022.
//
import UIKit

class NASecondaryTitleLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    init(fontSize: CGFloat) {
        super.init(frame: .zero)
        font = UIFont.systemFont(ofSize: fontSize, weight: .medium)
        configure()
    }
    
    private func configure() {
        textColor  = .secondaryLabel //Light grey color
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor  = 0.90    //Shrinks down 0.90 at minimum
        lineBreakMode = .byWordWrapping
        translatesAutoresizingMaskIntoConstraints = false
    }

}

