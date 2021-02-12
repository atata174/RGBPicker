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
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        RGBView.layer.cornerRadius = 20
        
        sliderLogic()
        
    }
    
    @IBAction func rgbAction(_ sender:UISlider) {
        sliderLogic()
        
        switch sender.tag {
        case 0: redColorCount.text = sliderLabelAction(slider: sender)
        case 1: greenColorCount.text = sliderLabelAction(slider: sender)
        case 2: blueColorCount.text = sliderLabelAction(slider: sender)
        default: break
        }
    }
    
    private func sliderLogic () {
        RGBView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    
    private func sliderLabelAction(slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}

