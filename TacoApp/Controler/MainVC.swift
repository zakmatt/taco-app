//
//  MainVC.swift
//  TacoApp
//
//  Created by Admin on 11/07/2017.
//  Copyright © 2017 Mattowy. All rights reserved.
//

import UIKit

class MainVC: UIViewController, DataServiceDelegate {
    @IBOutlet weak var headerView: HeaderView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var ds: DataService = DataService.instance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
        ds.delegate = self
        ds.loadDeliciousTacoData()
        ds.tacoArray.shuffle()
        
        headerView.addDropShadow()
        
        collectionView.register(TacoCell.self)
    }
    
    
    func deliciousTacoDataLoaded() {
        print("Delicious Taco Data Loaded")
    }
}

extension MainVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ds.tacoArray.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        /*if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TacoCell", for: indexPath) as? TacoCell {
            cell.configureCell(taco: ds.tacoArray[indexPath.row])
            return cell
        }
        return UICollectionViewCell()*/
        let cell = collectionView.dequeueReusableCell(forIndexPath: indexPath) as TacoCell
        cell.configureCell(taco: ds.tacoArray[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 95, height: 95)
    }
}
