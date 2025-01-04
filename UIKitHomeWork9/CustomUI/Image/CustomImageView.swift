//
//  CustomImageView.swift
//  UIKitHomeWork9
//
//  Created by Масуд Гаджиев on 04.01.2025.
//

import UIKit

class CustomImageView: UIImageView {
    init() {
        super.init(frame: .zero)
        self.clipsToBounds = true
        self.translatesAutoresizingMaskIntoConstraints = false
        self.contentMode = .scaleAspectFill
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
