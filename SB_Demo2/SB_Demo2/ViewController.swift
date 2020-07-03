//
//  ViewController.swift
//  SB_Demo2
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
    
    @IBAction func unwindToStartScreen(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source
        // Use data from the view controller which initiated the unwind segue
    }
    
    @IBAction func showButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "ShowSecondScreen", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let controller = segue.destination as? SecondViewController, segue.identifier == "ShowSecondScreen" {
            controller.text = "Hello, world!"
        }
    }
}

