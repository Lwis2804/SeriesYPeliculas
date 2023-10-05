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
    
    
    let modelData: ModelData = ModelData()
    var arrCategories: [Categories] = []
    var arrCategoriesSeries: [CategoriesSeries] = []
    var arrNowPlayingMovies: [ResultsNPResponse] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpMoviesCv()
        self.getNowPlayingMovies()
    }
    
    private func getNowPlayingMovies() {
        let movieWS = Movie_WS()
        movieWS.getNowPlayingMovies { respuesta, error in
            if error == nil {
                self.arrNowPlayingMovies = respuesta?.results ?? []
                self.moviesCollectionView.reloadData()
            }else {
                //TODO: CREAR UN ERROR
                print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n ERROR ---> \(String(describing: error?.localizedDescription)) \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
            }
        }
    }
    
    
    func setUpMoviesCv() {
        self.moviesCollectionView.dataSource = self
        self.moviesCollectionView.delegate = self
        self.moviesCollectionView.tag = 12
        self.moviesCollectionView.register(MoviesCollectionViewCell.nib, forCellWithReuseIdentifier: MoviesCollectionViewCell.identifier)
    }
    
  


}
