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
}

