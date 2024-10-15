//
//  UITextfield + Extension.swift
//  Task_Saumil_Doshi
//
//  Created by XcelTec-126 on 12/10/24.
//

import UIKit

extension UITextField {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
}
