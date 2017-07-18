//
//  NibLoadableView.swift
//  TacoApp
//
//  Created by Admin on 12/07/2017.
//  Copyright © 2017 Mattowy. All rights reserved.
//

import UIKit

protocol NibLoadableView: class {}

extension NibLoadableView where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
}
