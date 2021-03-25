//
//  ViewController.swift
//  RetainCount
//
//  Created by Pablo Quagliata on 25/3/21.
//

import UIKit

class ViewController: UIViewController {

    var pablo: Person?
    var oneMacbook: Macbook?

    override func viewDidLoad() {
        super.viewDidLoad()

        /// initializing objects
        pablo = Person(name: "Pablo", macbook: nil)
        oneMacbook = Macbook(model: "Pro2019", owner: nil)

        
    }


}

