//
//  TopRatedCollectionViewCell.swift
//  SeriesYPeliculas
//
//  Created by LUIS GONZALEZ on 05/10/23.
//

import UIKit

class TopRatedCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imgTopRated: UIImageView!{
        didSet{self.imgTopRated.layer.cornerRadius = 5
            self.imgTopRated.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var backgroundImage: UIView!{
        didSet{self.backgroundImage.layer.cornerRadius = 5
            self.backgroundImage.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var trAdult: UILabel!{
        didSet{self.trAdult.layer.cornerRadius = 5
            self.trAdult.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var trOriginalLanguage: UILabel!{
        didSet{self.trOriginalLanguage.layer.cornerRadius = 5
            self.trOriginalLanguage.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var trOriginalTitle: UILabel!{
        didSet{self.trOriginalTitle.layer.cornerRadius = 5
            self.trOriginalTitle.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var trReleaseDate: UILabel!{
        didSet{self.trReleaseDate.layer.cornerRadius = 5
            self.trReleaseDate.layer.masksToBounds = true
        }
    }
    
    var downloadTask : URLSessionDownloadTask?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        downloadTask?.cancel()
        downloadTask = nil
    }
    
    
    public func setUpTopRatedMovies (categoria : TopRatedResults){
        self.trAdult.text = categoria.overview
        self.trOriginalLanguage.text = categoria.original_language
        self.trOriginalTitle.text = categoria.original_title
        self.trReleaseDate.text = categoria.release_date
        
        if let urlPoster = categoria.poster_path,
           let url = URL(string: "https://image.tmdb.org/t/p/w500\(urlPoster)"){
            downloadTask = imgTopRated.loadImage(url: url)
        }
    }
    
    

}
