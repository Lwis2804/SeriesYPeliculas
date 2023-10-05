//
//  SeriesDetailViewController.swift
//  SeriesYPeliculas
//
//  Created by LUIS GONZALEZ on 27/09/23.
//

import UIKit

class SeriesDetailViewController: UIViewController {
    
    @IBOutlet weak var generalBackground: UIView!
    @IBOutlet weak var movieImageDetail: UIImageView!
    @IBOutlet weak var infromationBackground: UIView!
    @IBOutlet weak var calendarImage: UIImageView!
    @IBOutlet weak var lblDateSerieDetail: UILabel!
    @IBOutlet weak var lblDuracionSeriedetail: UILabel!
    @IBOutlet weak var lblGeneroSerieDetail: UILabel!
    @IBOutlet weak var btnReproducir: UIButton!{
        didSet{self.btnReproducir.layer.cornerRadius = 10}
    }
    @IBOutlet weak var btnVerMasTarde: UIButton!{
        didSet{self.btnVerMasTarde.layer.cornerRadius = 10}
    }
    @IBOutlet weak var lblSinopsisSerie: UILabel!
    @IBOutlet weak var lblDescripcionSerieDetail: UILabel!
    @IBOutlet weak var lblEpisodiosSeries: UILabel!
    @IBOutlet weak var tableViewEpisodios: UITableView!{
        didSet{self.tableViewEpisodios.layer.cornerRadius = 10}
    }
    @IBOutlet weak var btnContinuarViendo: UIButton!{
        didSet{self.btnContinuarViendo.layer.cornerRadius = 10}
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    

}
