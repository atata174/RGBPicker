//
//  MainViewController.swift
//  RGBPicker
//
//  Created by PenguinRaja on 12.02.2021.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setNewValues(newColor: UIColor)
}

class MainViewController: UIViewController {

    private var rgbModel: UIColor!
    private var rgbValues: CIColor!
    
//     MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let secondVC = segue.destination as? SecondViewController else { return }
        secondVC.rgbObject = rgbModel
        secondVC.rgbValues = rgbValues
        secondVC.delegate = self
    }
}

extension MainViewController: SettingsViewControllerDelegate {
    func setNewValues(newColor: UIColor) {
        rgbModel = newColor
        rgbValues = CIColor(color: rgbModel)
        view.backgroundColor = rgbModel
    }
}
