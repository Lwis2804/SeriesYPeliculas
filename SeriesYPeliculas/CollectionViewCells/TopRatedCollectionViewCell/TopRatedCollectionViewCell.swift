//
//  TopRatedCollectionViewCell.swift
//  SeriesYPeliculas
//
//  Created by LUIS GONZALEZ on 05/10/23.
//

import UIKit

class TopRatedCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imgTopRated: UIImageView!
    @IBOutlet weak var backgroundImage: UIView!
    @IBOutlet weak var trAdult: UILabel!
    @IBOutlet weak var trOriginalLanguage: UILabel!
    @IBOutlet weak var trOriginalTitle: UILabel!
    @IBOutlet weak var trReleaseDate: UILabel!
    
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
