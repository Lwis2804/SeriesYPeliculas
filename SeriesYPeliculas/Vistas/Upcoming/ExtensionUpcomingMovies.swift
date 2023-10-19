//
//  ExtensionUpcomingMovies.swift
//  SeriesYPeliculas
//
//  Created by LUIS GONZALEZ on 04/10/23.
//

import UIKit

extension UpcomingViewController : UICollectionViewDelegate & UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrUpcomingmovies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cCell = collectionView.dequeueReusableCell(withReuseIdentifier: UpcomingCollectionViewCell.identifier, for: indexPath) as? UpcomingCollectionViewCell ?? UpcomingCollectionViewCell()
        cCell.setUpUpcomingMovies(categoria: arrUpcomingmovies[indexPath.row])
        return cCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let goToView = MovieDetailViewController()
        navigationController?.pushViewController(goToView, animated: true)
        
    }
}

extension UpcomingViewController : UICollectionViewDelegateFlowLayout {
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: CGFloat(170.0), height: CGFloat(290.0))
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    

}
