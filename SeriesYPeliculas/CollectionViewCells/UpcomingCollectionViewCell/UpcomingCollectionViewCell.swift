//
//  UpcomingCollectionViewCell.swift
//  SeriesYPeliculas
//
//  Created by LUIS GONZALEZ on 05/10/23.
//

import UIKit

class UpcomingCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var upOriginalTitle: UILabel!{
        didSet{self.upOriginalTitle.layer.cornerRadius = 5}
    }
    @IBOutlet weak var upPosterPath: UILabel!{
        didSet{self.upPosterPath.layer.cornerRadius = 5}
    }
    @IBOutlet weak var upReleaseDate: UILabel!{
        didSet{self.upReleaseDate.layer.cornerRadius = 5}
    }
    @IBOutlet weak var upVoteCount: UILabel!{
        didSet{self.upVoteCount.layer.cornerRadius = 5}
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    public func setUpUpcomingMovies (categoria : UpcomingResults) {
        self.upOriginalTitle.text = categoria.original_title
        self.upPosterPath.text = categoria.title
        self.upReleaseDate.text = categoria.release_date
        self.upVoteCount.text = categoria.overview
    }
    
    
    
}
