//
//  LinesManager.swift
//  Memento
//
//  Created by Nataliya Lazouskaya on 1.11.22.
//

import UIKit

class LinesManager {
    static let shared = LinesManager()
    
    var linesArray = [LineModel]()
    
    func save() -> StateLinesMemento {
        return StateLinesMemento(lines: linesArray)
    }
    
    func load(state: StateLinesMemento) {
        linesArray = state.linesArray
    }
    
    func printLines(in view: UIView) {
        for v in view.layer.sublayers! {
            v.removeFromSuperlayer()
        }
        
        for line in linesArray {
            let path = UIBezierPath()
            path.move(to: line.start)
            path.addLine(to: line.end)
            drawShapeLayer(path, line.color, view)
        }
    }
    
    func drawShapeLayer(_ path: UIBezierPath, _ lineColor: UIColor, _ view: UIView) {
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = lineColor.cgColor
        shapeLayer.lineWidth = 10
        shapeLayer.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(shapeLayer)
        view.setNeedsDisplay()
    }
}
