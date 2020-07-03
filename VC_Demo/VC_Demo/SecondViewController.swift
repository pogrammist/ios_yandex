//
//  SecondViewController.swift
//  VC_Demo
//
//  Created by user on 03.07.2020.
//  Copyright © 2020 user. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func buttonCloseClocked(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
