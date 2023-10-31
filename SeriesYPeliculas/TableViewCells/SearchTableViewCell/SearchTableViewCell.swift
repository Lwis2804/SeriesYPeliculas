//
//  SearchTableViewCell.swift
//  SeriesYPeliculas
//
//  Created by LUIS GONZALEZ on 16/10/23.
//

import UIKit

class SearchTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var backgroundImage: UIView!{
        didSet{self.backgroundImage.layer.cornerRadius = 10}
    }
    @IBOutlet weak var searchBarTitle: UILabel!{
        didSet{self.searchBarTitle.layer.cornerRadius = 10}
    }
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    
    
    
    
    public func setUpSearchMovies (categoria : ResultSearchResponse) {
        self.searchBarTitle.text = "\(categoria.title ?? "")"
       
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
