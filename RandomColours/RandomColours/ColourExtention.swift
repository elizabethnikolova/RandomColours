//
//  ColourExtention.swift
//  RandomColours
//
//  Created by Elizabeth Nikolova on 11/23/22.
//

import UIKit

extension UIColor {
    
    static func random() -> UIColor {
        let randomColour = UIColor(red: .random(in: 0...1.0),
                                   green: .random(in: 0...1.0),
                                   blue: .random(in: 0...1.0),
                                   alpha: 1)
        return randomColour
    }
}
