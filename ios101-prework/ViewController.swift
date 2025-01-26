//
//  ViewController.swift
//  ios101-prework
//
//  Created by Sycamore Dennis on 1/26/25.
//

import UIKit



class ViewController: UIViewController {
    @IBOutlet weak var currentColor: UILabel!
    
    var currentRed: CGFloat = 1.0
    var currentGreen: CGFloat = 1.0
    var currentBlue: CGFloat = 1.0
    var currentAlpha: CGFloat = 0.5
    var currentBackgroundColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.5)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentColor.text = "\(currentRed), \(currentGreen), \(currentBlue)"
    }
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        
        func changeColor() -> UIColor{

            currentRed = CGFloat.random(in: 0...1)
            currentGreen = CGFloat.random(in: 0...1)
            currentBlue = CGFloat.random(in: 0...1)

            return UIColor(red: currentRed, green: currentGreen, blue: currentBlue, alpha: currentAlpha)
        }
        
        currentBackgroundColor = changeColor()
        view.backgroundColor = currentBackgroundColor
        currentColor.text = String(format: "%.2f, %.2f, %.2f", currentRed, currentGreen, currentBlue)
    }
    @IBAction func changeRed(_ sender: UIStepper) {

    }
    
}

