//
//  CustomTextfield.swift
//  Task_Saumil_Doshi
//
//  Created by XcelTec-126 on 12/10/24.
//

import UIKit

class CustomTextField: UITextField {
    
    // A method to set up the text field
    func setupTextField(cornerRadius: CGFloat = 20, borderColor: UIColor = .systemGray6, borderWidth: CGFloat = 1.0, backgroundColor: UIColor = .systemGray6) {
        self.layer.cornerRadius = cornerRadius
        self.layer.borderColor = borderColor.cgColor
        self.layer.borderWidth = borderWidth
        self.backgroundColor = backgroundColor
    }
}
