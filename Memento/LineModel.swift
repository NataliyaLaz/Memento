//
//  LineModel.swift
//  Memento
//
//  Created by Nataliya Lazouskaya on 1.11.22.
//

import UIKit

struct LineModel {
    var start: CGPoint
    var end: CGPoint
    var color: UIColor
    init(start: CGPoint, end: CGPoint, color: UIColor) {
        self.start = start
        self.end = end
        self.color = color
    }
}
