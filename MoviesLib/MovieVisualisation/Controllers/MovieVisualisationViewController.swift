//
//  ViewController.swift
//  11_11_20_MoviesLib_
//
//  Created by Thiago Monteiro on 11/11/20.
//

import UIKit

final class MovieVisualisationViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet private weak var imageViewPoster: UIImageView!
    @IBOutlet private weak var labelTitle: UILabel!
    @IBOutlet private weak var labelCategories: UILabel!
    @IBOutlet private weak var labelDuration: UILabel!
    @IBOutlet private weak var labelRating: UILabel!
    @IBOutlet weak var textViewSummary: UILabel!
    
    //MARK: - Proprieties
    
    var movie: Movie?
    
    // MARK: - Super Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let movie = movie {
            labelTitle.text = movie.title
            labelCategories.text = movie.categories
            labelRating.text = movie.ratingFormatted
            labelDuration.text = movie.duration
            imageViewPoster.image = UIImage(named: movie.image)
        }
    }
    
    // MARK: IBActions
    @IBAction private func playTrailler(_ sender: UIButton) {
    }
    
}

