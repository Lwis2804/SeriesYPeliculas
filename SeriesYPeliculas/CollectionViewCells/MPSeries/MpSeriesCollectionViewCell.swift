

import UIKit

class MpSeriesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var backgroundImage: UIView!
    @IBOutlet weak var seriresImageMp: UIImageView!{
        didSet{self.seriresImageMp.layer.cornerRadius = 10}
    }
    @IBOutlet weak var lblTitleImageMp: UILabel!{
        didSet{self.lblTitleImageMp.layer.cornerRadius = 10}
    }
    @IBOutlet weak var lblEpisodeMp: UILabel!{
        didSet{self.lblEpisodeMp.layer.cornerRadius = 10}
    }
    @IBOutlet weak var starImageMP: UIImageView!
    @IBOutlet weak var lblRateSerie: UILabel!{
        didSet{self.lblRateSerie.layer.cornerRadius = 10}
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func setUpSeriesCollectionViewMp (categoria: CategoriesSeries){
        self.lblTitleImageMp.text = categoria.title ?? ""
        self.lblRateSerie.text = categoria.stars ?? ""
        self.lblEpisodeMp.text = categoria.episodes ?? ""
        self.seriresImageMp.image = UIImage(named: categoria.images[0] )
    }

}
