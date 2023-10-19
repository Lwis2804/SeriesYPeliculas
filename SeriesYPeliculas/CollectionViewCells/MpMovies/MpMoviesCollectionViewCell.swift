//
//  MpMoviesCollectionViewCell.swift
//  SeriesYPeliculas
//
//  Created by LUIS GONZALEZ on 25/09/23.
//

import UIKit

class MpMoviesCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var backgroundImage: UIView!{
        didSet{self.backgroundImage.layer.cornerRadius = 10}
    }
    @IBOutlet weak var mpOriginalLanguage: UILabel!{
        didSet{self.mpOriginalLanguage.layer.cornerRadius = 10}
    }
    @IBOutlet weak var mpOverView: UILabel!{
        didSet{self.mpOverView.layer.cornerRadius = 10}
    }
    @IBOutlet weak var mpReleaseDate: UILabel!{
        didSet{self.mpReleaseDate.layer.cornerRadius = 10}
    }
    @IBOutlet weak var mpVoteAverage: UILabel!{
        didSet{self.mpVoteAverage.layer.cornerRadius = 10}
    }
    
    
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
