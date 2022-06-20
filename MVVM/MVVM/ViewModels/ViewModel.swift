//
//  ViewModel.swift
//  MVVM
//
//  Created by Andrei Maskal on 20/06/2022.
//

import Foundation

class ViewModel {
    var statusText = Dynamic("")
    
    func userButtonPressed(login: String, password: String) {
        
        if login != User.logins.first?.login || password != User.logins.first?.password {
            statusText.value = "Log in failed"
        } else {
            statusText.value = "You successfully logged in"
          
        }
    }
}
