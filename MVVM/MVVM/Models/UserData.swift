//
//  UserData.swift
//  MVVM
//
//  Created by Andrei Maskal on 22/06/2022.
//

import Foundation

struct UserData {
    
    var name: String?
    var thema: String?
    var date: String?
    var members: String?
}

extension UserData {
    static var userData = UserData(name: "iOS6-HW16", thema: "MVVM + C", date: "24.06.2022", members: "9")
}
