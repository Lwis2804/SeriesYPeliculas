//
//  CollectionViewCell.swift
//  SeriesYPeliculas
//
//  Created by LUIS GONZALEZ on 09/10/23.
//

import UIKit

class SearchCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var backgroundimage: UIView!{
        didSet{self.backgroundimage.layer.cornerRadius = 10}
    }
    @IBOutlet weak var sePage: UILabel!{
        didSet{self.sePage.layer.cornerRadius = 10}
    }
    @IBOutlet weak var seResult: UILabel!{
        didSet{self.seResult.layer.cornerRadius = 10}
    }
    @IBOutlet weak var seTotalPages: UILabel!{
        didSet{self.seTotalPages.layer.cornerRadius = 10}
    }
    @IBOutlet weak var seTotalResult: UILabel!{
        didSet{self.seTotalResult.layer.cornerRadius = 10}
    }
    
    
    
    
    
    
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



