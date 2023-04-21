//
//  UIStackView+Ex.swift
//  IrregularVerbsApp
//
//  Created by Елизавета Ефросинина on 21/04/2023.
//

import UIKit

extension UIStackView {
    func addArrangedSubviews(_ views: [UIView]) {
        views.forEach { view in
            addArrangedSubview(view)
        }
    }
}
