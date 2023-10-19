

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
    
    
}
