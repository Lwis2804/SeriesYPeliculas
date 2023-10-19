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

//MARK: - UI · I M A G E · V I E W · C E L L

extension UIImageView {
    /// Esta función permite la descarga de una imagen y colocarla en un UIImageView
    /// - Parameter url: Recibe una URL de donde va a tomar el recurso
    /// - Returns: una imagen descargada de internet
    func loadImage(url: URL) -> URLSessionDownloadTask {
        let session = URLSession.shared
        let downloadTask = session.downloadTask(with: url){[weak self] url, response, error in
            guard let self = self else { return }
            if error == nil, let url = url, let data = try? Data(contentsOf: url), let image = UIImage(data: data){
                DispatchQueue.main.async {
                    self.image = image
                }
            }
        }
        downloadTask.resume()
        return downloadTask
    }
}
