//
//  MpMoviesCollectionViewCell.swift
//  SeriesYPeliculas
//
//  Created by LUIS GONZALEZ on 25/09/23.
//

import UIKit

class MpMoviesCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var mostPopularimage: UIImageView!{
        didSet{self.mostPopularimage.layer.cornerRadius = 5
            self.mostPopularimage.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var backgroundImage: UIView!{
        didSet{self.backgroundImage.layer.cornerRadius = 5
            self.backgroundImage.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var mpOriginalLanguage: UILabel!{
        didSet{self.mpOriginalLanguage.layer.cornerRadius = 5
            self.mpOriginalLanguage.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var mpOverView: UILabel!{
        didSet{self.mpOverView.layer.cornerRadius = 5
            self.mpOverView.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var mpReleaseDate: UILabel!{
        didSet{self.mpReleaseDate.layer.cornerRadius = 5
            self.mpReleaseDate.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var mpVoteAverage: UILabel!{
        didSet{self.mpVoteAverage.layer.cornerRadius = 5
            self.mpVoteAverage.layer.masksToBounds = true
        }
    }
    
    var downloadTask : URLSessionDownloadTask?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        downloadTask?.cancel()
        downloadTask = nil
    }
    
    public func setUpMoviesCollectionViewMp (categoria: MostPopularResults){
        self.mpOriginalLanguage.text = categoria.original_language
        self.mpOverView.text = categoria.overview
        self.mpReleaseDate.text = categoria.release_date
        self.mpVoteAverage.text = categoria.title
        
        if let urlPoster = categoria.poster_path,
           let url = URL(string: "https://image.tmdb.org/t/p/w500\(urlPoster)"){
            downloadTask = mostPopularimage.loadImage(url: url)
        }
    }
    
    


}
