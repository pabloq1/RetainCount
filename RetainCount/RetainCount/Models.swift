//
//  Models.swift
//  RetainCount
//
//  Created by Pablo Quagliata on 25/3/21.
//

import Foundation

class Person {
    let name: String
    var macbook: Macbook?

    init(name: String, macbook: Macbook?) {
        self.name = name
        self.macbook = macbook
        print("Person \(name) is being initialized")
    }

    /*
     called when the object gets released from memory
     no retain cycle holding it
     */
    deinit {
        print("Person \(name) is being deinitialized")
    }
}

class Macbook {
    let model: String
    weak var owner: Person?

    init(model: String, owner: Person?) {
        self.model = model
        self.owner = owner
        print("Macbook \(model) is being initialized")
    }

    deinit {
        print("Macbook \(model) is being deinitialized")
    }
}
