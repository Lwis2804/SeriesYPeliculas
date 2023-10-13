//
//  CollectionViewCell.swift
//  SeriesYPeliculas
//
//  Created by LUIS GONZALEZ on 09/10/23.
//

import UIKit

class SearchCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var backgroundimage: UIView!
    @IBOutlet weak var sePage: UILabel!
    @IBOutlet weak var seResult: UILabel!
    @IBOutlet weak var seTotalPages: UILabel!
    @IBOutlet weak var seTotalResult: UILabel!
    
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    
    public func setUpSearchMovies (categoria : ResultSearchResponse) {
        self.sePage.text = "\(categoria.id ?? 0)"
        self.seResult.text = "\(String(describing: categoria.title))"
        self.seTotalPages.text = "\(categoria.vote_average ?? 0)"
        self.seTotalResult.text = "\(String(describing: categoria.popularity))"
    }

}



