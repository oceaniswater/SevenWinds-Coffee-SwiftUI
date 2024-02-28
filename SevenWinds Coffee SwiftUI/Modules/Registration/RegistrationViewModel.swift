//
//  RegistrationViewModel.swift
//  SevenWinds Coffee SwiftUI
//
//  Created by Mark Golubev on 28/02/2024.
//

import Foundation


protocol RegistrationViewProtocol {
    var email: String { get set }
    var password1: String { get set }
    var passwor2: String { get set }
    
    var isFormValid: Bool { get set }
    
    func onRegistrationTapped()
}

@Observable
final class RegistrationViewModel: RegistrationViewProtocol {
    var email: String = ""
    var password1: String = ""
    var passwor2: String = ""
    
    var isFormValid = true
    
    func onRegistrationTapped() {
        
    }
}
