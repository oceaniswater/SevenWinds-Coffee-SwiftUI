//
//  RegistartionView.swift
//  SevenWinds Coffee SwiftUI
//
//  Created by Mark Golubev on 28/02/2024.
//

import SwiftUI
import Pow

struct RegistartionView: View {
    @State var vm = RegistrationViewModel()
    
    var body: some View {
        ZStack {
            Color(.purple)
                .opacity(0.3)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                VStack(alignment: .leading) {
                    Text("Email:")
                        .foregroundStyle(.black)
                    TextField("", text: $vm.email)
                        .textFieldStyle(MainTextFieldStyle())
                        .textInputAutocapitalization(.never)
                }
                VStack(alignment: .leading) {
                    Text("Password:")
                        .foregroundStyle(.black)
                    SecureField("", text: $vm.password1)
                        .textFieldStyle(MainTextFieldStyle())
                        .textInputAutocapitalization(.never)
                }
                
                VStack(alignment: .leading) {
                    Text("Repeat password:")
                        .foregroundStyle(.black)
                    SecureField("", text: $vm.password2)
                        .textFieldStyle(MainTextFieldStyle())
                        .textInputAutocapitalization(.never)
                }
                
                Button(action: {
                    vm.onRegistrationTapped()
                }, label: {
                    Text("Sign Up")
                        .frame(width: 250)
                })
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .tint(.green)
                .disabled(!vm.isFormValid)
                .animation(.default, value: vm.isFormValid)
                .changeEffect(
                  .shine.delay(0.5),
                  value: vm.isFormValid,
                  isEnabled: vm.isFormValid
                )
                .padding(.vertical)
                
                Button("Log in") {
                    
                }
                .padding(.bottom)
            }
            .padding(20)
            .background {
                RoundedRectangle(cornerRadius: 25)
                    .foregroundStyle(.white)
                    .shadow(radius: 10)
                    
            }
            .padding(.horizontal, 50)
        }
    }
}

#Preview {
    RegistartionView()
}
