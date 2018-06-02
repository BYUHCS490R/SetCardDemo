//
//  SetCardView.swift
//  demo
//
//  Created by Christopher Slade on 6/1/18.
//  Copyright © 2018 Christopher Slade. All rights reserved.
//

import UIKit


@IBDesignable

class SetCardView: UIView {

    @IBInspectable
    var shape: String = "oval" { didSet { setNeedsDisplay() } }
    
    enum Shape: String {
        case diamond
        case squiggle
        case oval
    }
    
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        context?.saveGState()
        transform = CGAffineTransform.identity.translatedBy(x: 10, y: 10)
        context?.restoreGState()
        switch shape {
        case Shape.diamond.rawValue:
            
            drawDiamond()
        case Shape.oval.rawValue:
            drawOval()
        default: break
        }
    }

    private struct DrawingConstants {
        static let padding: CGFloat = 0.05
        stat
    }
    
    private func drawDiamond() {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: bounds.minX+bounds.width*DrawingConstants.padding, y: bounds.midY))
        path.addLine(to: CGPoint(x: bounds.midX, y: bounds.minY+20))
        path.addQuadCurve(to: <#T##CGPoint#>, controlPoint: <#T##CGPoint#>)
        UIColor.red.setStroke()
        path.stroke()
    }
    
    private func drawOval() {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: bounds.minX+20, y: bounds.midY))
        path.addLine(to: CGPoint(x: bounds.midX, y: bounds.minY+20))
        UIColor.blue.setStroke()
        path.stroke()
    }

}
