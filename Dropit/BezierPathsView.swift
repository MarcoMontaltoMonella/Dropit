//
//  BezierPathsView.swift
//  Dropit
//
//  Created by Marco Montalto Monella on 01/08/2015.
//  Copyright (c) 2015 Marco Montalto Monella. All rights reserved.
//

import UIKit

class BezierPathsView: UIView {

    private var bezierPaths = [String:UIBezierPath]()
    
    func setPath(path: UIBezierPath?, named name: String){
        bezierPaths[name] = path
        setNeedsDisplay()
    }
    
    override func drawRect(rect: CGRect) {
        // Enumeration of a dictionary
        for (_, path) in bezierPaths {
            path.stroke()
        }
    }
}
