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
        print("Main screen loaded")
        mainLabel.text = "Hello \(viewModel?.login ?? " ")"
    }
    
}
