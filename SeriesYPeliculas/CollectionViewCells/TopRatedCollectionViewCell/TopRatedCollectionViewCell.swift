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
    @IBOutlet weak var trOriginalTitle: UILabel!{
        didSet{self.trOriginalTitle.layer.cornerRadius = 5
            self.trOriginalTitle.layer.masksToBounds = true
        }
    }
    
    var downloadTask : URLSessionDownloadTask?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        downloadTask?.cancel()
        downloadTask = nil
    }
    
    
    public func setUpTopRatedMovies (categoria : TopRatedResults){
       
        self.trOriginalTitle.text = categoria.original_title
        
        if let urlPoster = categoria.poster_path,
           let url = URL(string: "https://image.tmdb.org/t/p/w500\(urlPoster)"){
            downloadTask = imgTopRated.loadImage(url: url)
        }
    }
    
    

}
