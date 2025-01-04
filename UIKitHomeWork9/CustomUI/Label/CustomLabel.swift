//
//  CustomLabel.swift
//  UIKitHomeWork9
//
//  Created by Масуд Гаджиев on 04.01.2025.
//

import UIKit

class CustomLabel: UILabel {
    init(font: UIFont, textColor: UIColor = .black) {
        super.init(frame: .zero)
        self.font = font
        self.textColor = textColor
        self.translatesAutoresizingMaskIntoConstraints = false
        self.textAlignment = .natural
        self.numberOfLines = 0
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
