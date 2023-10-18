

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

extension MostPopularViewController : UICollectionViewDelegateFlowLayout {
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: CGFloat(170.0), height: CGFloat(290.0))
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    

}
