//
//  StartViewController.swift
//  VC_Demo
//
//  Created by user on 03.07.2020.
//  Copyright © 2020 user. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Start"
    }
    @IBAction func buttonPushClicked(_ sender: UIButton) {
        let secondViewController = SecondViewController()
        navigationController?.pushViewController(secondViewController, animated: true)
    }
}
