//
//  Verb.swift
//  MVC_lesson
//
//  Created by Елизавета Ефросинина on 15/04/2023.
//

import Foundation

struct Verb {
    let infinitive: String
    let pastSimple: String
    let participle: String
    var translation: String { // computed property is only variable!
        NSLocalizedString(self.infinitive, comment: "") // self - обращение к экземпляру структуры
    }
}
