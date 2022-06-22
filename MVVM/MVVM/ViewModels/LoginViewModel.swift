//
//  ViewModel.swift
//  MVVM
//
//  Created by Andrei Maskal on 20/06/2022.
//

import Foundation

class LoginViewModel {
    
    var statusText = Dynamic("")
    var isLoggedIn = false
    
    func userButtonPressed(login: String, password: String) {
        
        if login != User.logins.first?.login || password != User.logins.first?.password {
            statusText.value = "Hе верный логин или пароль"
            isLoggedIn = false
        } else {
            statusText.value = "Добро пожаловать"
            isLoggedIn = true
        }
    }
}
