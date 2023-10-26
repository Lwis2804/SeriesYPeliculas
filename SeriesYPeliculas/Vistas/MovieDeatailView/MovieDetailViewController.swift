//
//  MovieDetailViewController.swift
//  SeriesYPeliculas
//
//  Created by LUIS GONZALEZ on 27/09/23.
//

import UIKit

class MovieDetailViewController: UIViewController {
    
    @IBOutlet weak var lblMovieTitle: UILabel!
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
    

 
    var downloadTask : URLSessionDownloadTask?
    var recibeCodable : Codable?

    


    override func viewDidLoad() {
        downloadTask?.cancel()
        downloadTask = nil
        super.viewDidLoad()
        

    //    print(type(of: recibeCodable))
   //     print(recibeCodable)
       switch recibeCodable {
       case is NowPlayingResult:
            setUpPlayingNowInf(categoria: recibeCodable as! NowPlayingResult)
       case is MostPopularResults:
            setUpMostPopularInf(categoria: recibeCodable as! MostPopularResults)
       case is TopRatedResults:
            setUpTopReatedInf(categoria: recibeCodable as! TopRatedResults)
       case is UpcomingResults:
            setUpUpcomingInf(categoria: recibeCodable as! UpcomingResults)
        default:
            break
        }

        
    }
    
    
    func setUpPlayingNowInf(categoria : NowPlayingResult){
        self.lblDateDetail.text = categoria.release_date
        self.lblMovieTitle.text = categoria.title
        self.lblGeneroDetail.text = "\(String(describing: categoria.genre_ids))"
        self.lblDexcriptionMovieDetail.text = categoria.overview
        self.lblDuracionDetail.text = categoria.original_language
        
        if let urlPoster = categoria.backdrop_path,
           let url = URL(string: "https://image.tmdb.org/t/p/w500\(urlPoster)"){
            downloadTask = imgMovieDetail.loadImage(url: url)
        }
    
    }
    
    func setUpMostPopularInf(categoria : MostPopularResults){
        self.lblDateDetail.text = categoria.release_date
        self.lblMovieTitle.text = categoria.title
        self.lblGeneroDetail.text = "\(String(describing: categoria.genre_ids))"
        self.lblDexcriptionMovieDetail.text = categoria.overview
        self.lblDuracionDetail.text = categoria.original_language
        
        if let urlPoster = categoria.backdrop_path,
           let url = URL(string: "https://image.tmdb.org/t/p/w500\(urlPoster)"){
            downloadTask = imgMovieDetail.loadImage(url: url)
        }
    
    }
    
    func setUpTopReatedInf(categoria : TopRatedResults){
        self.lblDateDetail.text = categoria.release_date
        self.lblMovieTitle.text = categoria.title
        self.lblGeneroDetail.text = "\(String(describing: categoria.genre_ids))"
        self.lblDexcriptionMovieDetail.text = categoria.overview
        self.lblDuracionDetail.text = categoria.original_language
        
        if let urlPoster = categoria.backdrop_path,
           let url = URL(string: "https://image.tmdb.org/t/p/w500\(urlPoster)"){
            downloadTask = imgMovieDetail.loadImage(url: url)
        }
    
    }
    
    func setUpUpcomingInf(categoria : UpcomingResults){
        self.lblDateDetail.text = categoria.release_date
        self.lblMovieTitle.text = categoria.title
        self.lblGeneroDetail.text = "\(String(describing: categoria.genre_ids))"
        self.lblDexcriptionMovieDetail.text = categoria.overview
        self.lblDuracionDetail.text = categoria.original_language
        
        if let urlPoster = categoria.backdrop_path,
           let url = URL(string: "https://image.tmdb.org/t/p/w500\(urlPoster)"){
            downloadTask = imgMovieDetail.loadImage(url: url)
        }
    
    }
    
    
    
    
    
}
