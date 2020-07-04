//
//  StackContainerController.swift
//  ViewControllers_demo_container
//
//  Created by user on 04.07.2020.
//  Copyright © 2020 user. All rights reserved.
//

import UIKit

class StackContainerController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let lifeCycleViewController1 = LifeCycleViewController()
        lifeCycleViewController1.view.backgroundColor = UIColor.red
        addInStack(viewController: lifeCycleViewController1)
        
        let lifeCycleViewController2 = LifeCycleViewController()
        lifeCycleViewController2.view.backgroundColor = UIColor.blue
        addInStack(viewController: lifeCycleViewController2)
        
        let lifeCycleViewController3 = LifeCycleViewController()
        lifeCycleViewController3.view.backgroundColor = UIColor.black
        addInStack(viewController: lifeCycleViewController3)
    }
    
    func addInStack(viewController: UIViewController) {
        viewController.willMove(toParent: self)
        self.addChild(viewController)
        stackView.addArrangedSubview(viewController.view)
        viewController.didMove(toParent: self)
    }
    
    func removeInStack(viewController: UIViewController) {
        viewController.willMove(toParent: nil)
        viewController.removeFromParent()
        stackView.removeArrangedSubview(viewController.view)
        viewController.didMove(toParent: nil)
    }
}
