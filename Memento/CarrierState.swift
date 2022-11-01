//
//  CarrierState.swift
//  Memento
//
//  Created by Nataliya Lazouskaya on 1.11.22.
//

import Foundation

class CarrierState {
    var state: StateLinesMemento?
    var linesManager: LinesManager
    
    init(linesManager: LinesManager) {
        self.linesManager = linesManager
    }
    
    public func saveLines() {
        state = linesManager.save()
    }
    
    func loadLines() {
        guard state != nil else { return }
        linesManager.load(state: state!)
    }
}
