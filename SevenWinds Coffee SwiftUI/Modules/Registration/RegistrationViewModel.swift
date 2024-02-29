//
//  RegistrationViewModel.swift
//  SevenWinds Coffee SwiftUI
//
//  Created by Mark Golubev on 28/02/2024.
//

import Foundation


protocol RegistrationViewProtocol {
//    var email: String { get set }
//    var password1: String { get set }
//    var passwor2: String { get set }
//    
//    var isFormValid: Bool { get set }
    
    func onRegistrationTapped()
}

@Observable
final class RegistrationViewModel: RegistrationViewProtocol {
    var email: String = ""
    var password1: String = ""
    var password2: String = ""
    
    var isFormValid: Bool {
        return isEmailValid && isEmailPasword1Valid && isEmailPasword2Valid && isPasswordEquals
    }
    
    private var isEmailValid: Bool {
        return email.isValidEmail
    }
    
    private var isEmailPasword1Valid: Bool {
        return password1.count > 5
    }
    
    private var isEmailPasword2Valid: Bool {
        return password2.count > 5
    }
    
    private var isPasswordEquals: Bool {
        return password1 == password2
    }
    
    func onRegistrationTapped() {
        
    }
    
}
