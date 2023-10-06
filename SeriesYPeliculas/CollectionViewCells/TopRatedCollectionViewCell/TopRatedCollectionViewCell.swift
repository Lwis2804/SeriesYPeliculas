//
//  TopRatedCollectionViewCell.swift
//  SeriesYPeliculas
//
//  Created by LUIS GONZALEZ on 05/10/23.
//

import UIKit

class TopRatedCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var backgroundImage: UIView!
    @IBOutlet weak var trAdult: UILabel!
    @IBOutlet weak var trOriginalLanguage: UILabel!
    @IBOutlet weak var trOriginalTitle: UILabel!
    @IBOutlet weak var trReleaseDate: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
    public func setUpTopRatedMovies (categoria : TopRatedResults){
        self.trAdult.text = "\(String(describing: categoria.adult))"
        self.trOriginalLanguage.text = categoria.original_language
        self.trOriginalTitle.text = categoria.original_title
        self.trReleaseDate.text = categoria.release_date
    }
    
    

}
