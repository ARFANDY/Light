//
//  ViewController.swift
//  Light
//
//  Created by Никита Акиндинов on 18.11.2020.
//

import UIKit

class ViewController: UIViewController {
    
    // 0 - red, 1 - yellow, 2 - green
    var lightStatus = 0
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

    // MARK: methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
    
    fileprivate func updateColor() {
        switch lightStatus {
        case 0:
            view.backgroundColor = .red
        case 1:
            view.backgroundColor = .yellow
        case 2:
            view.backgroundColor = .green
        default:
            print("Error!")
        }
    }
    
    @IBAction func buttonPressed() {
        lightStatus = (lightStatus + 1) % 3
        updateColor()
    }
    

}

