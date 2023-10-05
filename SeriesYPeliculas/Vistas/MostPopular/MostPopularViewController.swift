//
//  MostPopularViewController.swift
//  SeriesYPeliculas
//
//  Created by LUIS GONZALEZ on 20/09/23.
//

import UIKit

class MostPopularViewController: UIViewController {
    
    
    @IBOutlet weak var backgroundMP: UIView!{
        didSet{self.backgroundMP.layer.cornerRadius = 10}
    }
    @IBOutlet weak var lblMoviesMP: UILabel!
    @IBOutlet weak var moviesCollectionVMP: UICollectionView!{
        didSet{self.moviesCollectionVMP.layer.cornerRadius = 10}
    }
    

    var arrMostPopular: [MostPopularResults] = []
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpMoviesCvMp()
        self.getMostPopularMovies()
    }
    

    private func getMostPopularMovies() {
        let movieWS = Movie_WS()
        movieWS.getMostpopular { respuesta, error in
            if error == nil {
                self.arrMostPopular = respuesta?.results ?? []
                self.moviesCollectionVMP.reloadData()
            }else {
                //TODO: CREAR UN ERROR
                print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n ERROR ---> \(String(describing: error?.localizedDescription)) \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
            }
        }
    }

    
    func setUpMoviesCvMp() {
        self.moviesCollectionVMP.dataSource = self
        self.moviesCollectionVMP.delegate = self
        self.moviesCollectionVMP.register(MpMoviesCollectionViewCell.nib, forCellWithReuseIdentifier: MpMoviesCollectionViewCell.identifier)
    }
    
   
    

 
}
