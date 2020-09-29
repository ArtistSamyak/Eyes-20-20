//
//  CustomButton.swift
//  Eyes 20-20
//
//  Created by Samyak Pawar on 29/09/20.
//

import UIKit

class CustomButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupButton()
    }
    
    func setupButton()  {
        roundedCorners()
        buttonShadow()
    }
    
    func roundedCorners() {
        layer.cornerRadius = 20
    }
    
    func buttonShadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 6)
        layer.shadowRadius = 8
        layer.shadowOpacity = 0.5
        clipsToBounds = true
        layer.masksToBounds = false
        
    }
    
}
