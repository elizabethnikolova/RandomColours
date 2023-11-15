//
//  ColoursDetailViewController.swift
//  RandomColours
//
//  Created by Elizabeth Nikolova on 11/23/22.
//

import UIKit

class ColoursDetailViewController: UIViewController {
    
    var colour: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = colour ?? .blue
    }
}
