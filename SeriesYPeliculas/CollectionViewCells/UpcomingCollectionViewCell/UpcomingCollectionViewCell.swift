//
//  UpcomingCollectionViewCell.swift
//  SeriesYPeliculas
//
//  Created by LUIS GONZALEZ on 05/10/23.
//

import UIKit

class UpcomingCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imgUpcoming: UIImageView!
    @IBOutlet weak var upOriginalTitle: UILabel!{
        didSet{self.upOriginalTitle.layer.cornerRadius = 5
            self.upOriginalTitle.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var upPosterPath: UILabel!{
        didSet{self.upPosterPath.layer.cornerRadius = 5
            self.upPosterPath.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var upReleaseDate: UILabel!{
        didSet{self.upReleaseDate.layer.cornerRadius = 5
            self.upReleaseDate.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var upVoteCount: UILabel!{
        didSet{self.upVoteCount.layer.cornerRadius = 5
            self.upVoteCount.layer.masksToBounds = true
        }
    }
    
    var downloadTask : URLSessionDownloadTask?
    

    override func awakeFromNib() {
        super.awakeFromNib()
        downloadTask?.cancel()
        downloadTask = nil
    }

    public func setUpUpcomingMovies (categoria : UpcomingResults) {
        self.upOriginalTitle.text = categoria.original_title
        self.upPosterPath.text = categoria.title
        self.upReleaseDate.text = categoria.release_date
        self.upVoteCount.text = categoria.overview
        
        if let urlPoster = categoria.poster_path,
            let url = URL(string: "https://image.tmdb.org/t/p/w500\(urlPoster)"){
            downloadTask = imgUpcoming.loadImage(url: url)
        }
        
    }
    
    
    
}
