//
//  PlayingNowCollectionViewCell.swift
//  SeriesYPeliculas
//
//  Created by LUIS GONZALEZ on 05/10/23.
//

import UIKit

class PlayingNowCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var npBackdropPath: UILabel!
    @IBOutlet weak var npGenreId: UILabel!
    @IBOutlet weak var npID: UILabel!
    @IBOutlet weak var npOriginalLanguage: UILabel!
    @IBOutlet weak var npOverView: UILabel!
    @IBOutlet weak var npPosterPath: UILabel!
    @IBOutlet weak var npTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func setUpNowPlayingMovies (categoria: NowPlayingResult){
        self.npBackdropPath.text = categoria.backdrop_path
        self.npGenreId.text = "\(String(describing: categoria.genre_ids))"
        self.npID.text = "\(categoria.id ?? 0)"
        self.npOriginalLanguage.text = categoria.original_language
        self.npOverView.text = categoria.overview
        self.npPosterPath.text = categoria.poster_path
        self.npTitle.text = categoria.title
    }
    
    
    

}
