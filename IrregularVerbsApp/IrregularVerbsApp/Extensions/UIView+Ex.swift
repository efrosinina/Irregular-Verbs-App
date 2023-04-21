//
//  UIView+Ex.swift
//  IrregularVerbsApp
//
//  Created by Елизавета Ефросинина on 21/04/2023.
//

import UIKit

extension UIView {
    func addSubviews(_ views: [UIView]) {
        views.forEach { view in
            addSubview(view)
        }
    }
}
