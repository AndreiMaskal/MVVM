//
//  ViewController.swift
//  MVVM
//
//  Created by Andrei Maskal on 20/06/2022.
//

import UIKit

class LoginViewController: UIViewController, Storyboardable {
    
    var viewModel: LoginViewModel?
    var coordinator: AppCoordinator?
 
    @IBOutlet weak var loginFild: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBAction func joinPressed(_ sender: Any) {
        viewModel?.userButtonPressed(login: (loginFild.text ?? ""), password: passwordField.text ?? "")
        if viewModel!.isLoggedIn {
        coordinator?.isLoggedIn = viewModel!.isLoggedIn
        coordinator?.showMain(login: loginFild.text ?? "")
    }
}
    
    @IBOutlet weak var label: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBackgraund()
        bindViewModel()
        initialState()
        
    }
    
    func setupBackgraund() {
        view.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
    }
    
    func bindViewModel() {
        viewModel?.statusText.bind({ (statusText) in
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

