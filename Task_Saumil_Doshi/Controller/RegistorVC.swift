//
//  RegistorVC.swift
//  Task_Saumil_Doshi
//
//  Created by XcelTec-126 on 12/10/24.
//

import UIKit

class RegistorVC: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var vwTextFields: UIView!
    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtLastName: CustomTextField!
    @IBOutlet weak var txtEmailAddress: CustomTextField!
    @IBOutlet weak var txtAddress: CustomTextField!
    @IBOutlet weak var txtMobileNumber: CustomTextField!
    @IBOutlet weak var txtCountry: CustomTextField!
    @IBOutlet weak var txtState: CustomTextField!
    @IBOutlet weak var txtCity: CustomTextField!
    @IBOutlet weak var txtPassword: CustomTextField!
    
    @IBOutlet weak var txtConfirmTextfield: UITextField!
    
    @IBOutlet weak var btnSignUp: UIButton!
    
    
    @IBOutlet weak var btnPassword: UIButton!
    
    @IBOutlet weak var btnConfirmPassword: UIButton!
    
    //MARK: - Class Properties
    
    var passwordToggleButton: UIButton!
    
    //MARK: - Life Cycle function
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.navigationBar.isHidden = false
    }
    
    //MARK: - Class Function
    
    func setupUI() {
        self.vwTextFields.layer.cornerRadius = 20
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tapGesture)
        
        btnSignUp.layer.cornerRadius = 15
        setupView()
        setupTextField()
        setupTextFieldDelegate()
        
    }
    
    @objc func dismissKeyboard() {
        // Dismiss the keyboard
        view.endEditing(true)
    }
    
    func setupView() {
        vwTextFields.layer.shadowColor = UIColor.gray.cgColor
        vwTextFields.layer.shadowOpacity = 0.3
        vwTextFields.layer.shadowOffset = CGSize.zero
        vwTextFields.layer.shadowRadius = 6
    }
    
    
    func setupTextFieldDelegate() {
        txtFirstName.delegate = self
        txtLastName.delegate = self
        txtEmailAddress.delegate = self
        txtAddress.delegate = self
        txtMobileNumber.delegate = self
        txtCountry.delegate = self
        txtState.delegate = self
        txtCity.delegate = self
        txtPassword.delegate = self
        txtConfirmTextfield.delegate = self
    }
    
    func setupTextField() {
        
        txtFirstName.cornerRadius = 20
        txtFirstName.layer.borderColor = UIColor.systemGray6.cgColor // Set the border color
        txtFirstName.layer.borderWidth = 1.0 // Optional: Set the border width
        txtFirstName.backgroundColor = UIColor.systemGray6
        
        txtLastName.cornerRadius = 20
        txtLastName.layer.borderColor = UIColor.systemGray6.cgColor // Set the border color
        txtLastName.layer.borderWidth = 1.0 // Optional: Set the border width
        txtLastName.backgroundColor = UIColor.systemGray6
        
        txtEmailAddress.cornerRadius = 20
        txtEmailAddress.layer.borderColor = UIColor.systemGray6.cgColor // Set the border color
        txtEmailAddress.layer.borderWidth = 1.0 // Optional: Set the border width
        txtEmailAddress.backgroundColor = UIColor.systemGray6
        
        txtMobileNumber.cornerRadius = 20
        txtMobileNumber.layer.borderColor = UIColor.systemGray6.cgColor // Set the border color
        txtMobileNumber.layer.borderWidth = 1.0 // Optional: Set the border width
        txtMobileNumber.backgroundColor = UIColor.systemGray6
        
        txtAddress.cornerRadius = 20
        txtAddress.layer.borderColor = UIColor.systemGray6.cgColor // Set the border color
        txtAddress.layer.borderWidth = 1.0 // Optional: Set the border width
        txtAddress.backgroundColor = UIColor.systemGray6
        
        txtCountry.cornerRadius = 20
        txtCountry.layer.borderColor = UIColor.systemGray6.cgColor // Set the border color
        txtCountry.layer.borderWidth = 1.0 // Optional: Set the border width
        txtCountry.backgroundColor = UIColor.systemGray6
        
        txtState.cornerRadius = 20
        txtState.layer.borderColor = UIColor.systemGray6.cgColor // Set the border color
        txtState.layer.borderWidth = 1.0 // Optional: Set the border width
        txtState.backgroundColor = UIColor.systemGray6
        
        txtCity.cornerRadius = 20
        txtCity.layer.borderColor = UIColor.systemGray6.cgColor // Set the border color
        txtCity.layer.borderWidth = 1.0 // Optional: Set the border width
        txtCity.backgroundColor = UIColor.systemGray6
        
        txtPassword.cornerRadius = 20
        txtPassword.layer.borderColor = UIColor.systemGray6.cgColor // Set the border color
        txtPassword.layer.borderWidth = 1.0 // Optional: Set the border width
        txtPassword.backgroundColor = UIColor.systemGray6
        
        txtConfirmTextfield.cornerRadius = 20
        txtConfirmTextfield.layer.borderColor = UIColor.systemGray6.cgColor // Set the border color
        txtConfirmTextfield.layer.borderWidth = 1.0 // Optional: Set the border width
        txtConfirmTextfield.backgroundColor = UIColor.systemGray6
        
    }
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    func isValidEmail(_ email: String) -> Bool {
        // Basic email validation regex
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Z|a-z]{2,}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return predicate.evaluate(with: email)
    }
    
    private func isValidMobileNumber(_ mobileNumber: String) -> Bool {
        // Example validation: Check if the mobile number is 10 digits long
        let mobileRegex = "^[0-9]{10}$" // Adjust the regex based on your requirements
        let predicate = NSPredicate(format: "SELF MATCHES %@", mobileRegex)
        return predicate.evaluate(with: mobileNumber)
    }
    
    private func isValidPassword(_ password: String) -> Bool {
        // Password must be at least 8 characters long and contain a digit
        let passwordRegex = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9]).{8,}$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", passwordRegex)
        return predicate.evaluate(with: password)
    }
    
    func setupValidation() -> Bool  {
        if txtFirstName.text == "" {
            showAlert(message: "Please enter first name")
            return false
        } else if txtLastName.text == "" {
            showAlert(message: "Please enter last name")
            return false
        }else if txtEmailAddress.text == "" {
            showAlert(message: "Please enter email address")
            return false
        } else if !isValidEmail(txtEmailAddress.text ?? "") {
            showAlert(message: "Please enter a valid email address")
            return false
        } else if txtMobileNumber.text == "" {
            showAlert(message: "Please enter mobile number")
            return false
        } else if !isValidMobileNumber(txtMobileNumber.text ?? "") {
            showAlert(message: "Please enter a valid mobile number")
            return false
        } else if txtAddress.text == "" {
            showAlert(message: "Please enter address ")
            return false
        } else if txtCountry.text == "" {
            showAlert(message: "Please enter country")
            return false
        } else if txtState.text == "" {
            showAlert(message: "Please enter state")
            return false
        } else if txtCity.text == "" {
            showAlert(message: "Please enter city")
            return false
        } else if txtPassword.text == "" {
            showAlert(message: "Please enter password")
            return false
        } else if !isValidPassword(txtPassword.text ?? "") {
            showAlert(message: "Password must be at least 8 characters long and contain a number.One uppercase letter, one lowercase letter, and one special character.")
            return false
        } else if txtConfirmTextfield.text == "" {
            showAlert(message: "Please enter confirm password")
            return false
        } else if txtPassword.text != txtConfirmTextfield.text {
            showAlert(message: "Please enter correct confirm password same as password")
            return false
        }
        return true
        
        
    }
    
    
    
    //MARK: - Action Funtion
    
    @IBAction func btnSignUpTapped(_ sender: Any) {
        //        if setupValidation() {
        //            let vc = self.storyboard?.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
        //            self.navigationController?.pushViewController(vc, animated: true)
        //        }
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
        self.navigationController?.pushViewController(vc, animated: true)
        
        
    }
    
    
    @IBAction func btnPasswordTapped(_ sender: UIButton) {
        
        txtPassword.isSecureTextEntry.toggle()
        let btnImageName = txtPassword.isSecureTextEntry ? "eye.slash" : "eye"
        btnPassword.setImage(UIImage(systemName: btnImageName), for: .normal)
        
    }
    
    @IBAction func btnConfirmPasswordTapped(_ sender: UIButton) {
        
        txtConfirmTextfield.isSecureTextEntry.toggle()
        let btnImageName = txtConfirmTextfield.isSecureTextEntry ? "eye.slash" : "eye"
        btnConfirmPassword.setImage(UIImage(systemName: btnImageName), for: .normal)
        
    }
    
}

extension RegistorVC: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        // Define the character set that only allows numeric input
        let allowedCharacters = CharacterSet.decimalDigits
        let characterSet = CharacterSet(charactersIn: string)
        
        if textField == txtMobileNumber {
            // Mobile number field: Limit to 10 digits and allow only numeric input
            let currentText = textField.text ?? ""
            let updatedText = (currentText as NSString).replacingCharacters(in: range, with: string)
            
            // Check if input is numeric and within the 10-digit limit
            return updatedText.count <= 10 && allowedCharacters.isSuperset(of: characterSet)
            
        } else if textField == txtFirstName || textField == txtLastName || textField == txtAddress || textField == txtCountry || textField == txtState || textField == txtCity  {
            // Other text fields: Restrict to numeric input and limit to 16 characters
            let allowedCharacters = CharacterSet.letters
            let characterSet = CharacterSet(charactersIn: string)
            
            let currentText = textField.text ?? ""
            let updatedText = (currentText as NSString).replacingCharacters(in: range, with: string)
            
            // Restrict input to alphabetic characters only and limit to 16 characters
            return updatedText.count <= 16 && allowedCharacters.isSuperset(of: characterSet)
        } else if textField == txtEmailAddress {
            // For other text fields: Allow any character, but limit to 16 characters
            let currentText = textField.text ?? ""
            let updatedText = (currentText as NSString).replacingCharacters(in: range, with: string)
            
            // Limit input to 16 characters for non-mobile fields
            return updatedText.count <= 35
        } else {
            // For other text fields: Allow any character, but limit to 16 characters
            let currentText = textField.text ?? ""
            let updatedText = (currentText as NSString).replacingCharacters(in: range, with: string)
            
            // Limit input to 16 characters for non-mobile fields
            return updatedText.count <= 16
        }
    }
}
