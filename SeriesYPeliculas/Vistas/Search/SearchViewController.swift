//
//  SearchViewController.swift
//  SeriesYPeliculas
//
//  Created by LUIS GONZALEZ on 02/10/23.
//

import UIKit

class SearchViewController: UIViewController {
    
    @IBOutlet weak var backgroundImage: UIView!
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var btnSearch: UIButton!
    @IBOutlet weak var searchTableView: UITableView!
    
    
    var arrSearch: [ResultSearchResponse] = []
    var recibeSearch : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
    }


    
    private func getSearchMocies(withSearch search : String) {
        let movieWS = Movie_WS()
        movieWS.getSearchResponse(withSearch: search) { respuesta, error in
            if error == nil {
                self.arrSearch = respuesta?.results ?? []
                DispatchQueue.main.async {
                    self.searchTableView.reloadData()
                }
            }else {
                DispatchQueue.main.async {
                    self.showAlert(WithTitle: "Error", andMessage: "Ocurrio un error en el llamdo a Servicio")
                }
            }
        }
    }

    
    func setUpTableView() {
        self.searchTableView.delegate = self
        self.searchTableView.dataSource = self
        self.searchTableView.register(SearchTableViewCell.nib, forCellReuseIdentifier: SearchTableViewCell.identifier)
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


