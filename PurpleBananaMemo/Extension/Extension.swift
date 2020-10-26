//
//  Extension.swift
//  PurpleBananaMemo
//
//  Created by user on 2020/10/26.
//  Copyright © 2020 sangbeomLee. All rights reserved.
//

import UIKit

extension UIViewController {
    static func loadFromNib() -> Self {
        func instantiateFromNib<T: UIViewController>() -> T {
            return T.init(nibName: String(describing: T.self), bundle: nil)
        }
        
        return instantiateFromNib()
    }
}


