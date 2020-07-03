//
//  ViewController.swift
//  VC_Demo
//
//  Created by user on 03.07.2020.
//  Copyright © 2020 user. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showSecondViewController(_ sender: Any ) {
        let secondViewController = SecondViewController(nibName: "SecondViewController", bundle: nil)
        present(secondViewController, animated: true, completion: nil)
    }

}

