//
//  PlayingNowViewController.swift
//  SeriesYPeliculas
//
//  Created by LUIS GONZALEZ on 20/09/23.
//

import UIKit

class PlayingNowViewController: UIViewController {


    @IBOutlet weak var generalBackground: UIView!{
        didSet{self.generalBackground.layer.cornerRadius = 10}
    }
    @IBOutlet weak var lblMoviesTitle: UILabel!{
        didSet{self.lblMoviesTitle.layer.cornerRadius = 10}
    }
    @IBOutlet weak var moviesCollectionView: UICollectionView!{
        didSet{self.moviesCollectionView.layer.cornerRadius = 10}
    }
    @IBOutlet weak var lblSeriesTitle: UILabel!{
        didSet{self.lblSeriesTitle.layer.cornerRadius = 10}
    }
    @IBOutlet weak var seriesCollectionView: UICollectionView!{
        didSet{self.seriesCollectionView.layer.cornerRadius = 10}
    }
    
    
    var arrNowPlayingMovies: [NowPlayingResult] = []
    let myCellWidth = UIScreen.main.bounds.width / 2
    let myCellHigh = UIScreen.main.bounds.height / 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpMoviesCv()
        self.getNowPlayingMovies()
        self.moviesCollectionView.reloadData()
    }
    
    private func getNowPlayingMovies() {
        let movieWS = Movie_WS()
        movieWS.getNowPlayingMovies { respuesta, error in
            if error == nil {
                self.arrNowPlayingMovies = respuesta?.results ?? []
                DispatchQueue.main.async {
                    self.moviesCollectionView.reloadData()
                }
            }else {
                DispatchQueue.main.async {
                    self.showAlert(WithTitle: "Error", andMessage: "Ocurrio un error en el llamdo a Servicio")
                }
            }
        }
    }
    
    
    func setUpMoviesCv() {
        self.moviesCollectionView.dataSource = self
        self.moviesCollectionView.delegate = self
        self.moviesCollectionView.tag = 12
        self.moviesCollectionView.register(PlayingNowCollectionViewCell.nib, forCellWithReuseIdentifier: PlayingNowCollectionViewCell.identifier)
    }

    

}
