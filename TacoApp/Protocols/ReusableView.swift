//
//  ReusableView.swift
//  TacoApp
//
//  Created by Admin on 12/07/2017.
//  Copyright © 2017 Mattowy. All rights reserved.
//

import UIKit

protocol ReusableView: class {}

extension ReusableView where Self: UIView {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
