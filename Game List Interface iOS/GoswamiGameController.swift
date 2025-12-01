//
//  GoswamiGameController.swift
//  Goswami_Exam03
//
//  Created by Bhavesh on 11/20/25.
//

import UIKit

class GoswamiGameController: UIViewController {

    @IBOutlet weak var imageViewOL: UIImageView!
    @IBOutlet weak var nameOL: UILabel!
    @IBOutlet weak var descriptionOL: UITextView!
    
    var selectedGame: Game?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let game = selectedGame {
            self.title = game.name
            nameOL.text = game.name
            descriptionOL.text = game.information
            imageViewOL.image = game.imageName
            
            applyImageAnimation()
        }
    }
    
    func applyImageAnimation() {
        imageViewOL.alpha = 0
        UIView.animate(withDuration: 1.0) {
            self.imageViewOL.alpha = 1.0
        }
    }
}

