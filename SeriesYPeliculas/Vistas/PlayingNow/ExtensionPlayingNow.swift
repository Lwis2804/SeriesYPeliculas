
import UIKit

extension PlayingNowViewController : UICollectionViewDelegate & UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cCell = collectionView.dequeueReusableCell(withReuseIdentifier: PlayingNowCollectionViewCell.identifier, for: indexPath) as? PlayingNowCollectionViewCell ?? PlayingNowCollectionViewCell()
        cCell.setUpNowPlayingMovies(categoria: arrNowPlayingMovies[indexPath.row])
        return cCell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrNowPlayingMovies.count
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
         let goToView = MovieDetailViewController()
        goToView.recibeCodable = arrNowPlayingMovies[indexPath.row]
            navigationController?.pushViewController(goToView, animated: true)
    }
  
}

extension PlayingNowViewController : UICollectionViewDelegateFlowLayout {
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: CGFloat(172.5), height: CGFloat(290.0))
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    

}


