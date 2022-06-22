//
//  Coordinator.swift
//  MVVM
//
//  Created by Andrei Maskal on 22/06/2022.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    
    func start()
}
