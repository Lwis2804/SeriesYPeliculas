//
//  SearchBarViewController.swift
//  SeriesYPeliculas
//
//  Created by LUIS GONZALEZ on 18/10/23.
//

import UIKit

class SearchBarViewController: UIViewController {
    
    
    @IBOutlet weak var backGroundImage: UIView!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var searchBarTable: UITableView!
    
    
    let search = UISearchController(searchResultsController: nil)
    var isSearchEmpty : Bool {return search.searchBar.text?.isEmpty ?? true}
    var isFiltering : Bool {return search.isActive && !isSearchEmpty}
    var arrSearch: [ResultSearchResponse] = []
    var recibeSearch : String = ""
    var urlSession : URLSession?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        setUpSearchBar()
        setUpSearchBarProperties()
        //  setUpBarTokens()
        setUptableSearch()
    }
    
    func getSearchMocies(withSearch search : String) {
        let movieWS = Movie_WS()
        movieWS.getSearchResponse(withSearch: search) { respuesta, error in
            if error == nil {
                self.arrSearch = respuesta?.results ?? []
                DispatchQueue.main.async {
                    self.searchBarTable.reloadData()
                }
            }else {
                DispatchQueue.main.async {
                    self.showAlert(WithTitle: "Error", andMessage: "Ocurrio un error en el llamdo a Servicio")
                }
            }
        }
    }
    
    
    func setUptableSearch() {
        self.searchBarTable.delegate = self
        self.searchBarTable.dataSource = self
        self.searchBarTable.register(SearchTableViewCell.nib, forCellReuseIdentifier: SearchTableViewCell.identifier)
    }
    
    private func setUpSearchBar() {
        self.search.searchBar.searchTextField.delegate = self
        search.obscuresBackgroundDuringPresentation = false
        search.searchBar.searchTextField.placeholder = "Search your movie"
        self.navigationItem.searchController = search
        definesPresentationContext = true
    }
    
    private func setUpSearchBarProperties() {
        search.automaticallyShowsCancelButton = true
        search.automaticallyShowsScopeBar = true
        search.automaticallyShowsSearchResultsController = true
    }
    
    // private func setUpBarTokens() {
    //      let tagToken = UISearchToken(icon: UIImage(systemName: "tag.fil"), text: "Movies")
    //      search.searchBar.searchTextField.insertToken(tagToken, at: 0)
    //  }
    
    
    /*
     @IBAction func searchMovieBtn(_ sender: Any) {
     arrSearch.removeAll()
     if self.search.searchBar.searchTextField.text != "" {
     getSearchMocies(withSearch: self.search.searchBar.searchTextField.text ?? "")
     } else {
     self.showAlert(WithTitle: "Cuidado", andMessage: "Favor de llenar la busqueda")
     }
     }
     */
}
