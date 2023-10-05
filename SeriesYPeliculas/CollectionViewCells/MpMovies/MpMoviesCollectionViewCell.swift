//
//  MpMoviesCollectionViewCell.swift
//  SeriesYPeliculas
//
//  Created by LUIS GONZALEZ on 25/09/23.
//

import UIKit

class MpMoviesCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var backgroundImage: UIView!
    @IBOutlet weak var mpBackPopular: UILabel!
    @IBOutlet weak var mpOriginalLanguage: UILabel!
    @IBOutlet weak var mpID: UILabel!
    @IBOutlet weak var mpOverView: UILabel!
    @IBOutlet weak var mpPosterPath: UILabel!
    @IBOutlet weak var mpReleaseDate: UILabel!
    @IBOutlet weak var mpVoteAverage: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func setUpMoviesCollectionViewMp (categoria: MostPopularResults){
        self.mpBackPopular.text = categoria.backdrop_path
        self.mpOriginalLanguage.text = categoria.original_language
        self.mpID.text = "\(categoria.id ?? 0)"
        self.mpOverView.text = categoria.overview
        self.mpPosterPath.text = categoria.poster_path
        self.mpReleaseDate.text = categoria.release_date
        self.mpVoteAverage.text = "\(categoria.vote_average ?? 0)"
    }
    
    


}
