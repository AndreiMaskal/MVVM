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
        updateUI()
    }
    
    func updateUI() {
        nameLabel.text = viewModel?.model?.name
        themaLabel.text = viewModel?.model?.thema
        dateLabel.text = viewModel?.model?.date
        participantsLabel.text = viewModel?.model?.members
    }
}
