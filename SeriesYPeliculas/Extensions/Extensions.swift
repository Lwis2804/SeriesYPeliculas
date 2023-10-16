//  Extensions.swift
//  SeriesYPeliculas
//  Created by Moises Abraham Vazquez Perez on 04/10/23.

import UIKit

//MARK: - UI · C O L L E C T I O N · V I E W · C E L L
extension UICollectionViewCell {
    ///Identifier nos ayudará a poder saber la identidad de nuestra celda, y usarla en cualquiera que herede de UICollectionViewCell
    class var identifier: String { return String(describing: self) }
    class var nib: UINib { return UINib(nibName: identifier, bundle: Bundle(for: PlayingNowViewController.self)) }
}






//MARK: - UI · V I E W · C O N T R O L L E R
extension UIViewController {
    func showAlert(WithTitle title: String, andMessage msg: String){
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        self.present(alert, animated: true)
    }
}


//MARK: - UI · T A B L E · V I E W · C E L L

extension UITableViewCell {
    ///Identifier nos ayudará a poder saber la identidad de nuestra celda, y usarla en cualquiera que herede de UICollectionViewCell
    class var identifier: String { return String(describing: self) }
    class var nib: UINib { return UINib(nibName: identifier, bundle: Bundle(for: SearchTableViewCell.self)) }
}
