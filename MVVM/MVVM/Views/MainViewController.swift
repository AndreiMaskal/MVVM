//
//  MainViewController.swift
//  MVVM
//
//  Created by Andrei Maskal on 22/06/2022.
//

import UIKit

class MainViewController: UIViewController, Storyboardable {
    
    @IBOutlet var mainLabel: UILabel!
    @IBAction func aboutButtonPressed(_ sender: Any) {
        coordinator?.showDetail()
    }
    
    weak var coordinator: AppCoordinator?
    var viewModel: MainViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBackgraund()
        setupText()
    }
    
    func setupBackgraund() {
        view.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
    }
    
    func setupText() {
        mainLabel.text = "Hello \(viewModel?.login ?? " ")"
    }
    
    
}
