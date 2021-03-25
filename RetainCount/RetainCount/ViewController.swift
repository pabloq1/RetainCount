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

        /// deinit objects
        /*
        pablo = nil
        oneMacbook = nil
         */

        /// creating strong references
        pablo?.macbook = oneMacbook
        oneMacbook?.owner = pablo

        /*
         deinit method is not getting called on pablo because there's
         still a strong reference from oneMacbook pointing to pablo
         we need to set the owner of the macbook as a weak reference
         is a person is nil, there's no reason for the macbook to have
         an owner.
         */
        pablo = nil
        print(oneMacbook?.owner)
    }


}

