

import UIKit

class MoviesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var generalBackgorundImage: UIView!{
        didSet{self.generalBackgorundImage.layer.cornerRadius = 10}
    }
    @IBOutlet weak var lblMovieTitle: UILabel!
    @IBOutlet weak var lblMovieDuracion: UILabel!
    @IBOutlet weak var lblStarsRate: UILabel!
    @IBOutlet weak var adult: UILabel!
    @IBOutlet weak var backdripPath: UILabel!
    @IBOutlet weak var genreIds: UILabel!
    @IBOutlet weak var id: UILabel!
    @IBOutlet weak var originalLanguage: UILabel!
    @IBOutlet weak var overview: UILabel!
    @IBOutlet weak var popularity: UILabel!
    @IBOutlet weak var posterPath: UILabel!
    @IBOutlet weak var releaseDate: UILabel!
    @IBOutlet weak var voteCount: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    public func setUpMoviesCollectionView (categoria: ResultsNPResponse){
        self.lblMovieTitle.text = categoria.title ?? ""
        self.lblStarsRate.text = "\(categoria.vote_average ?? 0.0)"
        self.lblMovieDuracion.text = categoria.original_title ?? ""
       // self.adult.text = "\(categoria.adult ??) ""
        self.backdripPath.text = categoria.backdrop_path
        self.genreIds.text = "\(String(describing: categoria.genre_ids))"
        self.id.text = "\(categoria.id ?? 0)"
        self.originalLanguage.text = categoria.original_language
        self.overview.text = categoria.overview
        self.popularity.text = "\(categoria.popularity ?? 0.0)"
        self.posterPath.text = categoria.poster_path
        self.releaseDate.text = categoria.release_date
        self.voteCount.text = "\(categoria.vote_count ?? 0)"
        
//        self.movieImageCell.image = UIImage(named: categoria.images[0])
    }

}
