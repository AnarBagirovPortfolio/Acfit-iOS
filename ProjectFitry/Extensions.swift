//
//  Extensions.swift
//  ProjectFitry
//
//  Created by Faannaka on 02.05.17.
//  Copyright © 2017 Anar Baghirov. All rights reserved.
//

import Foundation
import UIKit

extension UIApplication {
    var statusBarView: UIView? {
        return value(forKey: "statusBar") as? UIView
    }
}

extension UIColor {
    class var placeholderColor: UIColor {
        return UIColor(red: 199 / 255.0, green: 199 / 255.0, blue: 205 / 255.0, alpha: 0.5)
    }
    
    class var mainColor: UIColor {
        return UIColor(red: 14 / 255.0, green: 61 / 255.0, blue: 76 / 255.0, alpha: 0.8)
    }
    
    class var pickerColor: UIColor {
        return UIColor(red: 90 / 255.0, green: 101 / 255.0, blue: 108 / 255.0, alpha: 1)
    }
}

extension UITextField {
    func useUnderline() {
        let border = CALayer()
        let borderWidth = CGFloat(1.0)
        border.borderColor = UIColor.placeholderColor.cgColor
        border.frame = CGRect(origin: CGPoint(x: 0,y :self.frame.size.height - borderWidth), size: CGSize(width: self.frame.size.width, height: self.frame.size.height))
        border.borderWidth = borderWidth
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
}

extension UIButton {
    func set(enable: Bool) {
        self.isEnabled = enable
        self.alpha = enable ? 1 : 0.5
    }
}
