//  Extensions.swift
//  SeriesYPeliculas
//  Created by Moises Abraham Vazquez Perez on 04/10/23.

import UIKit

extension UICollectionViewCell {
    ///Identifier nos ayudará a poder saber la identidad de nuestra celda, y usarla en cualquiera que herede de UICollectionViewCell
    class var identifier: String { return String(describing: self) }
    class var nib: UINib { return UINib(nibName: identifier, bundle: Bundle(for: SceneDelegate.self)) }
}
