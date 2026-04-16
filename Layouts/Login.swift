//
//  Login.swift
//  Layouts
//
//  Created by Hariharan GJ on 15/04/26.
//

import SwiftUI

struct Login: View {
    @State private var username: String = ""
    @State private var password: String = ""

    var body: some View {
        ZStack {
            Color.yellow
                .opacity(0.9)
                .ignoresSafeArea()

            VStack(spacing: 18) {
                Text("Login")
                    .font(.system(size: 28, weight: .semibold))
                    .foregroundColor(.black)

                VStack(spacing: 12) {
                    TextField("Username", text: $username)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                        .padding()
                        .background(.white.opacity(0.9))
                        .cornerRadius(10)
                        .foregroundColor(.black)

                    SecureField("Password", text: $password)
                        .padding()
                        .background(.white.opacity(0.9))
                        .cornerRadius(10)
                        .foregroundColor(.black)
                }

                VStack(spacing: 12) {
                    Button("Login") {}
                        .buttonStyle(GreenButtonStyle())

                    Button("Signup") {}
                        .buttonStyle(GreenButtonStyle())

                    Button("Forgot password") {}
                        .buttonStyle(GreenButtonStyle())
                }

                Spacer(minLength: 0)
            }
            .padding(24)
        }
    }
}

private struct GreenButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 16, weight: .semibold))
            .foregroundColor(.black)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 14)
            .background(Color.green.opacity(configuration.isPressed ? 0.75 : 0.9))
            .cornerRadius(12)
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}

