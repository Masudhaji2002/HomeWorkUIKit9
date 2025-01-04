//
//  UIExt.swift
//  UIKitHomeWork9
//
//  Created by Масуд Гаджиев on 04.01.2025.
//

import UIKit

extension UIImage{
    func getRatio() -> CGFloat?{
        return self.size.height / self.size.width
    }
}

extension UIView {
    func addSubviews(view: UIView...) {
        view.forEach {
            addSubview($0)
        }
    }
}
