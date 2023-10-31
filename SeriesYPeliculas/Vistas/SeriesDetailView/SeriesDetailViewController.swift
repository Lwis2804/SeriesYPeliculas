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
    
    
    var recibeDatos : ResultSearchResponse?
    var downloadTask : URLSessionDownloadTask?
    
    override func viewDidLoad() {
        downloadTask?.cancel()
        downloadTask = nil
        super.viewDidLoad()
        setUpPlayingNowInf(categoria: recibeDatos!)
    }
    
    
    func setUpPlayingNowInf(categoria : ResultSearchResponse){
        self.lblSinopsisSerie.text = categoria.title
        self.lblDateSerieDetail.text = categoria.release_date
        self.lblDuracionSeriedetail.text = "\(categoria.vote_average ?? 0.0)"
        self.lblGeneroSerieDetail.text = categoria.original_title
        self.lblDescripcionSerieDetail.text = categoria.overview
        
        
        
        if let urlPoster = categoria.poster_path,
           let url = URL(string: "https://image.tmdb.org/t/p/w500\(urlPoster)"){
            downloadTask = movieImageDetail.loadImage(url: url)
        }
    
    }

    

}
