//
//  TopRatedViewController.swift
//  SeriesYPeliculas
//
//  Created by LUIS GONZALEZ on 02/10/23.
//

import UIKit

class TopRatedViewController: UIViewController {
    
    @IBOutlet weak var backgorundView: UIView!
    @IBOutlet weak var lblTopRatedPeliculas: UILabel!
    @IBOutlet weak var topRatedCollectionView: UICollectionView!
    
    
    
    var arrTopRatedMovies: [TopRatedResults] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTopRatedMovies()
        self.TopRatedMovies()
    }
    
    
    private func TopRatedMovies() {
        let movieWS = Movie_WS()
        movieWS.getTopRated { respuesta, error in
            if error == nil {
                self.arrTopRatedMovies = respuesta?.results ?? []
                DispatchQueue.main.async {
                    self.topRatedCollectionView.reloadData()
                }
            }else {
                DispatchQueue.main.async {
                    self.showAlert(WithTitle: "Error", andMessage: "Ocurrio un error en el llamdo a Servicio")
                }
            }
        }
    }
    
    func setUpTopRatedMovies() {
        self.topRatedCollectionView.dataSource = self
        self.topRatedCollectionView.delegate = self
        self.topRatedCollectionView.tag = 12
        self.topRatedCollectionView.register(TopRatedCollectionViewCell.nib, forCellWithReuseIdentifier: TopRatedCollectionViewCell.identifier)
    }

    
    
    
 

}
