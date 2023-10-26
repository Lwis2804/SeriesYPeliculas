//
//  UpcomingCollectionViewCell.swift
//  SeriesYPeliculas
//
//  Created by LUIS GONZALEZ on 05/10/23.
//

import UIKit

class UpcomingCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imgUpcoming: UIImageView!
    @IBOutlet weak var upPosterPath: UILabel!{
        didSet{self.upPosterPath.layer.cornerRadius = 5
            self.upPosterPath.layer.masksToBounds = true
        }
    }

    
    var downloadTask : URLSessionDownloadTask?
    

    override func awakeFromNib() {
        super.awakeFromNib()
        downloadTask?.cancel()
        downloadTask = nil
    }

    public func setUpUpcomingMovies (categoria : UpcomingResults) {
        
        self.upPosterPath.text = categoria.title
      
   
        
        if let urlPoster = categoria.poster_path,
            let url = URL(string: "https://image.tmdb.org/t/p/w500\(urlPoster)"){
            downloadTask = imgUpcoming.loadImage(url: url)
        }
        
    }
    
    
    
}
