//
//  MainVC.swift
//  TacoApp
//
//  Created by Admin on 11/07/2017.
//  Copyright © 2017 Mattowy. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var headerView: HeaderView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        headerView.addDropShadow()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
