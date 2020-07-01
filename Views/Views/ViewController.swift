//
//  ViewController.swift
//  VIews
//
//  Created by user on 01.07.2020.
//  Copyright © 2020 user. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var gameFieldView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gameFieldView.layer.borderWidth = 1
        gameFieldView.layer.borderColor = UIColor.gray.cgColor
        gameFieldView.layer.cornerRadius = 5
    }

    @IBAction func stepperChanged(_ sender: UIStepper) {
        timeLabel.text = "Время: \(Int(sender.value)) сек"
    }
}

