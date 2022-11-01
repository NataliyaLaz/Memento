//
//  ViewController.swift
//  Memento
//
//  Created by Nataliya Lazouskaya on 1.11.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewBoard: DrawView!
    
    var carrierState: CarrierState!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewBoard.lineColor = UIColor.brown
        let lines = LinesManager.shared
        carrierState = CarrierState(linesManager: lines)
    }

    @IBAction func saveButtonPressed(_ sender: UIButton) {
        carrierState.saveLines()
    }
    
    @IBAction func loadButtonPressed(_ sender: UIButton) {
        carrierState.loadLines()
        carrierState.linesManager.printLines(in: viewBoard)
    }
    
    @IBAction func blueButtonPressed(_ sender: UIButton) {
        viewBoard.lineColor = UIColor.blue
    }
    
    @IBAction func orangeButtonPressed(_ sender: UIButton) {
        viewBoard.lineColor = UIColor.orange
    }
    
    @IBAction func greenButtonPressed(_ sender: UIButton) {
        viewBoard.lineColor = UIColor.green
    }
}

