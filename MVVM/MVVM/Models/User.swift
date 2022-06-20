//
//  User.swift
//  MVVM
//
//  Created by Andrei Maskal on 20/06/2022.
//

import Foundation


struct User {
    
    let login: String?
    let password: String?
}

extension User {
    
    static var logins = [
        User(login: "Swift", password: "1234")
    ]
}
