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
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var btnSearch: UIButton!
    
    var arrSearch: [ResultSearchResponse] = []
    var recibeSearch : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpMoviesCvMp()

    }


    
    private func getSearchMocies(withSearch search : String) {
        let movieWS = Movie_WS()
        movieWS.getSearchResponse(withSearch: search) { respuesta, error in
            if error == nil {
                self.arrSearch = respuesta?.results ?? []
                DispatchQueue.main.async {
                    self.searchCollectionView.reloadData()
                }
            }else {
                DispatchQueue.main.async {
                    self.showAlert(WithTitle: "Error", andMessage: "Ocurrio un error en el llamdo a Servicio")
                }
            }
        }
    }

    
    func setUpMoviesCvMp() {
        self.searchCollectionView.dataSource = self
        self.searchCollectionView.delegate = self
        self.searchCollectionView.register(SearchCollectionViewCell.nib, forCellWithReuseIdentifier: SearchCollectionViewCell.identifier)
    }


    @IBAction func goToSearch(_ sender: Any) {
        self.recibeSearch = searchTextField.text ?? ""
        arrSearch.removeAll()
        if recibeSearch != "" {
            getSearchMocies(withSearch: recibeSearch)
        } else {
            self.showAlert(WithTitle: "Cuidado", andMessage: "Favor de llenar la busqueda")
        }
    }
}


