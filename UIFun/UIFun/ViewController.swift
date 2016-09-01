//
//  ViewController.swift
//  UIFun
//
//  Created by Michael Dippery on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // TODO: Set up IB outlets
    
    @IBOutlet weak var paintBucket: UIView!
    @IBOutlet weak var firstSegmentControl: UISegmentedControl!
    @IBOutlet weak var secondSegmentControl: UISegmentedControl!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO: Set the initial paint color to "red"
        paintBucket.backgroundColor = UIColor.redColor()
    }
    
    func mixColors(withFirst first: String, second: String) -> String {
        // TODO: Mix colors and return a string indicating the name of the mixed color
        // (e.g., "red", "purple", "blue")
        
        let x = (first, second)
        switch x {
        case ("Red", "Red"):
            return "red"
        case ("Yellow","Yellow"):
            return "yellow"
        case ("Blue","Blue"):
            return "blue"
        case ("Red","Yellow"), ("Yellow","Red"):
            return "orange"
        case ("Red","Blue"), ("Blue","Red"):
            return "purple"
        case ("Yellow","Blue"), ("Blue","Yellow"):
            return "green"
        default: return "invalid color"
        }
        
    }
    
    @IBAction func colorSelected(sender: UISegmentedControl) {
        // TODO: Mix each selected color and set the paint color to the mixed color
        
        paintBucket.paintColorName = mixColors(withFirst: firstSegmentControl.color.name, second: secondSegmentControl.color.name)

        }
    
}
    