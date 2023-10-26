

import UIKit


extension SearchBarViewController : UITableViewDelegate & UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrSearch.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cCell = tableView.dequeueReusableCell(withIdentifier: SearchTableViewCell.identifier, for: indexPath) as? SearchTableViewCell ?? SearchTableViewCell()
        cCell.setUpSearchMovies(categoria: arrSearch[indexPath.row])
        return cCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let goToView = SeriesDetailViewController()
        goToView.recibeDatos = arrSearch[indexPath.row]
        navigationController?.pushViewController(goToView, animated: true)
    }
    
 /*   func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
         let goToView = MovieDetailViewController()
        goToView.recibeCodable = arrMostPopular[indexPath.row]
            navigationController?.pushViewController(goToView, animated: true)
    }
   */
    
}


extension SearchBarViewController : UISearchResultsUpdating{
    
    func updateSearchResults(for searchController: UISearchController) {
        
    }
    
}


extension SearchBarViewController : UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.text == ""{
            getSearchMocies(withSearch: "") // busqueda con campo vacio, actualiza con letra borrada 
            return true
        }else {
            getSearchMocies(withSearch: textField.text ?? "")
            return true
        }
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if string == "" && range.length == 1 && range.location == 0{
            getSearchMocies(withSearch: "")
            return true
        }
        getSearchMocies(withSearch: textField.text ?? "")
        return true
    }
    
}
