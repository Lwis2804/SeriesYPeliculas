//
//  PlayingNowCollectionViewCell.swift
//  SeriesYPeliculas
//
//  Created by LUIS GONZALEZ on 05/10/23.
//

import UIKit

class PlayingNowCollectionViewCell: UICollectionViewCell {
    
    
  
    @IBOutlet weak var imgPoster: UIImageView!{
        didSet{self.imgPoster.layer.cornerRadius = 5
            self.imgPoster.layer.masksToBounds = true
        }
    }
    
    @IBOutlet weak var npTitle: UILabel!{
        didSet{self.npTitle.layer.cornerRadius = 5
            self.npTitle.layer.masksToBounds = true
        }
        
    }
    
    var downloadTask : URLSessionDownloadTask?
    
    override func prepareForReuse() {
        super.prepareForReuse()
        downloadTask?.cancel()
        downloadTask = nil
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func setUpNowPlayingMovies (categoria: NowPlayingResult){
        self.npTitle.text = categoria.title
        
        if let urlPoster = categoria.poster_path,
           let url = URL(string: "https://image.tmdb.org/t/p/w500\(urlPoster)"){
            downloadTask = imgPoster.loadImage(url: url)
        }
    }
    
    
    //"backdrop_path": "/cHNqobjzfLj88lpIYqkZpecwQEC.jpg"
    //"poster_path": "/b0Ej6fnXAP8fK75hlyi2jKqdhHz.jpg"

}
