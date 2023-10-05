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
                self.topRatedCollectionView.reloadData()
            }else {
                //TODO: CREAR UN ERROR
                print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n ERROR ---> \(String(describing: error?.localizedDescription)) \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
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
