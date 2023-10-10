//
//  SearchViewController.swift
//  SeriesYPeliculas
//
//  Created by LUIS GONZALEZ on 02/10/23.
//

import UIKit

class SearchViewController: UIViewController {
    
    @IBOutlet weak var backgroundImage: UIView!
    @IBOutlet weak var searchCollectionView: UICollectionView!
    @IBOutlet weak var searchTitle: UILabel!
    
    
    
    var arrSearch: [SearchResponse] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    
    private func getSearchMocies() {
        let movieWS = Movie_WS()
        movieWS.getSearchResponse { respuesta, error in
            if error == nil {
                self.arrSearch = respuesta?.self ?? []
                self.searchCollectionView.reloadData()
            }else {
                //TODO: CREAR UN ERROR
                print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n ERROR ---> \(String(describing: error?.localizedDescription)) \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
            }
        }
    }

    
    func setUpMoviesCvMp() {
        self.searchCollectionView.dataSource = self
        self.searchCollectionView.delegate = self
        self.searchCollectionView.register(MpMoviesCollectionViewCell.nib, forCellWithReuseIdentifier: MpMoviesCollectionViewCell.identifier)
    }


}
