//
//  LifeCycleViewController.swift
//  ViewControllers_demo_container
//
//  Created by user on 04.07.2020.
//  Copyright © 2020 user. All rights reserved.
//

import UIKit

class LifeCycleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("viewDidLoad - \(self)")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear, animated: \(animated) - \(self)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear, animated: \(animated) - \(self)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear, animated: \(animated) - \(self)")
    }

}
