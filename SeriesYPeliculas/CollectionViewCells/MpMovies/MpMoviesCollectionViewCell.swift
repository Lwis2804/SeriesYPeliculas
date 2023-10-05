//
//  MpMoviesCollectionViewCell.swift
//  SeriesYPeliculas
//
//  Created by LUIS GONZALEZ on 25/09/23.
//

import UIKit

class MpMoviesCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var backgroundImage: UIView!
    @IBOutlet weak var movieImageMp: UIImageView!{
        didSet{self.movieImageMp.layer.cornerRadius = 10}
    }
    @IBOutlet weak var lblTitleMovieMp: UILabel!{
        didSet{self.lblTitleMovieMp.layer.cornerRadius = 10}
    }
    @IBOutlet weak var lblLongMovieMp: UILabel!{
        didSet{self.lblLongMovieMp.layer.cornerRadius = 10}
    }
    @IBOutlet weak var starImageMp: UIImageView!
    @IBOutlet weak var lblRateMovieMP: UILabel!{
        didSet{self.lblRateMovieMP.layer.cornerRadius = 10}
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func setUpMoviesCollectionViewMp (categoria: Categories){
        self.lblTitleMovieMp.text = categoria.title ?? ""
        self.lblRateMovieMP.text = categoria.stars ?? ""
        self.lblLongMovieMp.text = categoria.time ?? ""
        self.movieImageMp.image = UIImage(named: categoria.images[0] )
    }
    


}
