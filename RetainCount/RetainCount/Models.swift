//
//  Models.swift
//  RetainCount
//
//  Created by Pablo Quagliata on 25/3/21.
//

import Foundation

class Person {
    let name: String
    let macbook: Macbook?

    init(name: String, macbook: Macbook) {
        self.name = name
        self.macbook = macbook
    }

    deinit {
        print("Person \(name) is being deinitialized")
    }
}

class Macbook {
    let model: String
    let owner: Person?

    init(model: String, owner: Person) {
        self.model = model
        self.owner = owner
    }

    deinit {
        print("Macbook \(model) is being deinitialized")
    }
}
