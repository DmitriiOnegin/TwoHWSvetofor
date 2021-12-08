//
//  ViewController.swift
//  TwoHWSvetofor
//
//  Created by Dmitrii Onegin on 08.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redLamp: UIView!
    @IBOutlet weak var yellowLamp: UIView!
    @IBOutlet weak var greenLamp: UIView!
    
    @IBOutlet weak var buttonLable: UIButton!
    
    var num = 0
    
//    enum Lamp {
//        case nill
//        case red
//        case yellow
//        case green
//
//        var activ {
//
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        redLamp.layer.cornerRadius = 40
        yellowLamp.layer.cornerRadius = 40
        greenLamp.layer.cornerRadius = 40
        redLamp.alpha = 0.3
        yellowLamp.alpha = 0.3
        greenLamp.alpha = 0.3
        buttonLable.setTitle("START", for: .normal)
    }

    @IBAction func buttonAction() {
        buttonLable.setTitle("NEXT", for: .normal)
        if num < 3 {
            num += 1 } else {
                num = 1
            }
                
        switch num {
        case 0:
            redLamp.alpha = 0.3
            yellowLamp.alpha = 0.3
            greenLamp.alpha = 0.3
        case 1:
            redLamp.alpha = 1
            yellowLamp.alpha = 0.3
            greenLamp.alpha = 0.3
        case 2:
            redLamp.alpha = 0.3
            yellowLamp.alpha = 1
            greenLamp.alpha = 0.3
        case 3:
            redLamp.alpha = 0.3
            yellowLamp.alpha = 0.3
            greenLamp.alpha = 1
        default:
         return
        }
        
    }
    
    
    
}

