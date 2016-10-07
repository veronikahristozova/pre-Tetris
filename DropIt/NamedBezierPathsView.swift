//
//  NamedBezierPathsView.swift
//  DropIt
//
//  Created by Veronika Hristozova on 10/7/16.
//  Copyright © 2016 Veronika Hristozova. All rights reserved.
//

import UIKit

class NamedBezierPathsView: UIView {

    
    var bezierPaths = [String: UIBezierPath]() { didSet { setNeedsDisplay() } }
    

    override func draw(_ rect: CGRect) {
        for (_, path) in bezierPaths {
            path.stroke()   
        }
    }
    

}
