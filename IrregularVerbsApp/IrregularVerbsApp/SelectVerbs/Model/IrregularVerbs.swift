//
//  IrregularVerbs.swift
//  MVC_lesson
//
//  Created by Елизавета Ефросинина on 15/04/2023.
//

import Foundation

final class IrregularVerbs {
    
    //MARK: -- Singleton
    static var shared = IrregularVerbs()
    private init() {
        configureVerbs()
    }
    
    //MARK: -- Properties
    private(set) var verbs: [Verb] = []
    var selectedVerbs: [Verb] = []
    
    //MARK: -- Methods
    private func configureVerbs() {
        verbs = [
            Verb(infinitive: "blow", pastSimple: "blew", participle: "blown"),
            Verb(infinitive: "fight", pastSimple: "fought", participle: "fought"),
            Verb(infinitive: "hang", pastSimple: "hung", participle: "hung"),
            Verb(infinitive: "wake", pastSimple: "woke", participle: "woken"),
            Verb(infinitive: "send", pastSimple: "sent", participle: "sent"),
            Verb(infinitive: "mean", pastSimple: "meant", participle: "meant"),
            Verb(infinitive: "lie", pastSimple: "lay", participle: "lain"),
            Verb(infinitive: "hold", pastSimple: "held", participle: "held")
        ]
    }
}
