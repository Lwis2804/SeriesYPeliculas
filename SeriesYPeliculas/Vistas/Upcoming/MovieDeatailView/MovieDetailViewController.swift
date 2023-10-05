//
//  MovieDetailViewController.swift
//  SeriesYPeliculas
//
//  Created by LUIS GONZALEZ on 27/09/23.
//

import UIKit

class MovieDetailViewController: UIViewController {
    
    @IBOutlet weak var imgMovieDetail: UIImageView!
    @IBOutlet weak var backgroundInformation: UIView!
    @IBOutlet weak var calendarImage: UIImageView!
    @IBOutlet weak var lblDateDetail: UILabel!
    @IBOutlet weak var lblDuracionDetail: UILabel!
    @IBOutlet weak var lblGeneroDetail: UILabel!
    @IBOutlet weak var lblInformacionTitle: UILabel!
    @IBOutlet weak var lblDexcriptionMovieDetail: UILabel!
    @IBOutlet weak var btnReproducir: UIButton!{
        didSet{self.btnReproducir.layer.cornerRadius = 10}
    }
    @IBOutlet weak var btnVerMastrde: UIButton!{
        didSet{self.btnVerMastrde.layer.cornerRadius = 10}
    }
    @IBOutlet weak var backgroundTrailer: UIView!{
        didSet{self.backgroundTrailer.layer.cornerRadius = 10}
    }
    @IBOutlet weak var imageTrailerDetail: UIImageView!
    @IBOutlet weak var btnVerTrailer: UIButton!
    @IBOutlet weak var lblDuraconTrailer: UILabel!
    @IBOutlet weak var lblRepartoDetail: UILabel!
    @IBOutlet weak var repartoCollectionView: UICollectionView!{
        didSet{self.repartoCollectionView.layer.cornerRadius = 10}
    }
    
    
    
    
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }



}
