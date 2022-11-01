//
//  StateLinesMemento.swift
//  Memento
//
//  Created by Nataliya Lazouskaya on 1.11.22.
//

import Foundation

class StateLinesMemento {
    var linesArray: [LineModel]
    
    init(lines: [LineModel]) {
        self.linesArray = lines
    }
}
