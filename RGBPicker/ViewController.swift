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
    
    private var redColor: CGFloat = 0
    private var greenColor: CGFloat = 0
    private var blueColor: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        RGBView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
        RGBView.layer.cornerRadius = 20
        
    }
    
    @IBAction func redColorSlider() {
        redColor = sliderLogic(sliderValue: redSlider.value)
        redColorCount.text = String(format: "%.2f", redSlider.value)
    }
    
    @IBAction func greenColorSlider() {
        greenColor = sliderLogic(sliderValue: greenSlider.value)
        greenColorCount.text = String(format: "%.2f", greenSlider.value)
    }
    
    @IBAction func blueColorSlider() {
        blueColor = sliderLogic(sliderValue: blueSlider.value)
        blueColorCount.text = String(format: "%.2f", blueSlider.value)
    }
    
    private func sliderLogic (sliderValue: Float) -> CGFloat {
        RGBView.backgroundColor = UIColor(
            red: redColor,
            green: greenColor,
            blue: blueColor,
            alpha: 1)
        return CGFloat(sliderValue)
    }
}

// Первая версия кода.

/*
 @IBOutlet var RGBView: UIView!
 @IBOutlet var redColorCount: UILabel!
 @IBOutlet var greenColorCount: UILabel!
 @IBOutlet var blueColorCount: UILabel!
 
 private var redColor: CGFloat = 0
 private var greenColor: CGFloat = 0
 private var blueColor: CGFloat = 0
 
 override func viewDidLoad() {
     super.viewDidLoad()
     RGBView.layer.cornerRadius = 20
 }
 
 @IBAction func redColorSlider(_ sender: UISlider) {
     redColor = CGFloat(sender.value)
     redColorCount.text = String(round(100 * sender.value) / 100)
     RGBView.backgroundColor = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1)
 }
 
 @IBAction func greenColorSlider(_ sender: UISlider) {
     greenColor = CGFloat(sender.value)
     greenColorCount.text = String(round(100 * sender.value) / 100)
     RGBView.backgroundColor = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1)
 }
 
 @IBAction func blueColorSender(_ sender: UISlider) {
     blueColor = CGFloat(sender.value)
     blueColorCount.text = String(round(100 * sender.value) / 100)
     RGBView.backgroundColor = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1)
 }
 */
