//
//  ViewController.swift
//  Light
//
//  Created by Никита Акиндинов on 18.11.2020.
//

import UIKit

class ViewController: UIViewController {
    
    var isLightOn = true
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    @IBAction func buttonPressed() {
        isLightOn.toggle()
        view.backgroundColor = isLightOn ? .white : .black
    }
    

}

