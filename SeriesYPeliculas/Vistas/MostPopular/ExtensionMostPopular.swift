

import UIKit

extension MostPopularViewController : UICollectionViewDelegate & UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrMostPopular.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cCell = collectionView.dequeueReusableCell(withReuseIdentifier: MpMoviesCollectionViewCell.identifier, for: indexPath) as? MpMoviesCollectionViewCell ?? MpMoviesCollectionViewCell()
            cCell.setUpMoviesCollectionViewMp(categoria: arrMostPopular[indexPath.row])
            return cCell
    }
    
}


