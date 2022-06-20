//
//  ViewController.swift
//  MVVM
//
//  Created by Andrei Maskal on 20/06/2022.
//

import UIKit

class ViewController: UIViewController {
    
    var viewModel = ViewModel()
 
    @IBOutlet weak var loginFild: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBAction func joinPressed(_ sender: Any) {
        viewModel.userButtonPressed(login: (loginFild.text ?? "" ), password: passwordField.text ?? "")
    }
    
    
    @IBOutlet weak var label: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        initialState()
        
    }
    
    func bindViewModel() {
        viewModel.statusText.bind({ (statusText) in
            DispatchQueue.main.async {
                self.label.text = statusText
            }
        })
    }
    
    func initialState() {
        label.textColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        label.text = ""
        
    }
    
}

