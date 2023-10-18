//
//  PlayingNowCollectionViewCell.swift
//  SeriesYPeliculas
//
//  Created by LUIS GONZALEZ on 05/10/23.
//

import UIKit

class PlayingNowCollectionViewCell: UICollectionViewCell {
    
    
  
    @IBOutlet weak var npOriginalLanguage: UILabel!{
        didSet{self.npOriginalLanguage.layer.cornerRadius = 10}
    }
    @IBOutlet weak var npOverView: UILabel!{
        didSet{self.npOverView.layer.cornerRadius = 10}
    }
    @IBOutlet weak var npTitle: UILabel!{
        didSet{self.npTitle.layer.cornerRadius = 10}
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func setUpNowPlayingMovies (categoria: NowPlayingResult){
        self.npOriginalLanguage.text = categoria.original_language
        self.npOverView.text = categoria.overview
        self.npTitle.text = categoria.title
    }
    
    
    

}
