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
    
    
    
    public func setUpSearchMovies (categoria : SearchResponse) {
        self.sePage.text = "\(categoria.page ?? 0)"
        self.seResult.text = "\(String(describing: categoria.results))"
        self.seTotalPages.text = "\(categoria.total_pages ?? 0)"
        self.seTotalResult.text = "\(String(describing: categoria.total_results))"
    }

}
