//
//  UIViewController+Extension.swift
//  ArchitectureTemplate
//
//  Created by Mikita Patskevich on 1/29/20.
//  Copyright © 2020 Nikita Patskevich. All rights reserved.
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
