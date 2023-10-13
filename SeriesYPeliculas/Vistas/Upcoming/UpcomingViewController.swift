//
//  UpcomingViewController.swift
//  SeriesYPeliculas
//
//  Created by LUIS GONZALEZ on 02/10/23.
//

import UIKit

class UpcomingViewController: UIViewController {
    
    @IBOutlet weak var backgroungView: UIView!
    @IBOutlet weak var upcomingTitle: UILabel!
    @IBOutlet weak var upcomingCollectionView: UICollectionView!
    
    
    var arrUpcomingmovies : [UpcomingResults] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTopRatedMovies()
        self.UpcomingMovies()

    }
    
    
    private func UpcomingMovies() {
        let movieWS = Movie_WS()
        movieWS.getUpcomingResponse { respuesta, error in
            if error == nil {
                self.arrUpcomingmovies = respuesta?.results ?? []
                DispatchQueue.main.async {
                    self.upcomingCollectionView.reloadData()
                }
            }else {
                DispatchQueue.main.async {
                    self.showAlert(WithTitle: "Error", andMessage: "Ocurrio un error en el llamdo a Servicio")
                }
            }
        }
    }
    
    func setUpTopRatedMovies() {
        self.upcomingCollectionView.dataSource = self
        self.upcomingCollectionView.delegate = self
        self.upcomingCollectionView.tag = 12
        self.upcomingCollectionView.register(UpcomingCollectionViewCell.nib, forCellWithReuseIdentifier: UpcomingCollectionViewCell.identifier)
    }


 

}
