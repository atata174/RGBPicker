//
//  ViewController.swift
//  RGBPicker
//
//  Created by PenguinRaja on 31.01.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var RGBView: UIView!
    @IBOutlet var redColorCount: UILabel!
    @IBOutlet var greenColorCount: UILabel!
    @IBOutlet var blueColorCount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        RGBView.layer.cornerRadius = 20
    }
    @IBAction func redColorSlider(_ sender: UISlider) {
    }
    
    @IBAction func greenColorSlider(_ sender: UISlider) {
    }
    
    @IBAction func blueColorSender(_ sender: UISlider) {
    }
    

}

