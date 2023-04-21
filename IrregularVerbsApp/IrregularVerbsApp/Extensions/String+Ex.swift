//
//  String+Ex.swift
//  IrregularVerbsApp
//
//  Created by Елизавета Ефросинина on 21/04/2023.
//

import UIKit

extension String {
    var localized: String {
        NSLocalizedString(self, comment: "")
    }
}
