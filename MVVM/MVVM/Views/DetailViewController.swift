//
//  DetailViewController.swift
//  MVVM
//
//  Created by Andrei Maskal on 22/06/2022.
//

import UIKit

class DetailViewController: UIViewController, Storyboardable {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var themaLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var participantsLabel: UILabel!
    
    weak var coordinator: AppCoordinator?
    var viewModel: DetailViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBackgraund()
        updateUI()
    }
    
    func setupBackgraund() {
        view.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
    }
    
    func updateUI() {
        nameLabel.text = viewModel?.model?.name
        themaLabel.text = viewModel?.model?.thema
        dateLabel.text = viewModel?.model?.date
        participantsLabel.text = viewModel?.model?.members
    }
}
