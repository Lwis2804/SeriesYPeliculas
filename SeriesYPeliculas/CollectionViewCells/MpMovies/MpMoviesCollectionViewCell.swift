//
//  MpMoviesCollectionViewCell.swift
//  SeriesYPeliculas
//
//  Created by LUIS GONZALEZ on 25/09/23.
//

import UIKit

class MpMoviesCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var backgroundImage: UIView!
    @IBOutlet weak var mpOriginalLanguage: UILabel!
    @IBOutlet weak var mpOverView: UILabel!
    @IBOutlet weak var mpReleaseDate: UILabel!
    @IBOutlet weak var mpVoteAverage: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func setUpMoviesCollectionViewMp (categoria: MostPopularResults){
        self.mpOriginalLanguage.text = categoria.original_language
        self.mpOverView.text = categoria.overview
        self.mpReleaseDate.text = categoria.release_date
        self.mpVoteAverage.text = categoria.title
    }
    
    


}
