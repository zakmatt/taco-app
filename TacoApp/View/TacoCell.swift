//
//  TacoCell.swift
//  TacoApp
//
//  Created by Admin on 12/07/2017.
//  Copyright © 2017 Mattowy. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell, NibLoadableView {
    @IBOutlet weak var tacoImage: UIImageView!
    @IBOutlet weak var tacoLabel: UILabel!
    
    var taco: Taco!
    
    func configureCell(taco: Taco) {
        self.taco = taco
        tacoImage.image = UIImage(named: taco.proteinId.rawValue)
        tacoLabel.text = taco.productName
    }
}
