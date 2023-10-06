//
//  UpcomingCollectionViewCell.swift
//  SeriesYPeliculas
//
//  Created by LUIS GONZALEZ on 05/10/23.
//

import UIKit

class UpcomingCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var upOriginalTitle: UILabel!
    @IBOutlet weak var upPosterPath: UILabel!
    @IBOutlet weak var upReleaseDate: UILabel!
    @IBOutlet weak var upVoteCount: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    public func setUpUpcomingMovies (categoria : UpcomingResults) {
        self.upOriginalTitle.text = categoria.original_title
        self.upPosterPath.text = categoria.poster_path
        self.upReleaseDate.text = categoria.release_date
        self.upVoteCount.text = "\(String(describing: categoria.vote_count))"
    }
    
    
    
}
