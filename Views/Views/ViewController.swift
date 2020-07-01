//
//  ViewController.swift
//  VIews
//
//  Created by user on 01.07.2020.
//  Copyright © 2020 user. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var isGameActive = false
    private var gameTimeLeft: TimeInterval = 0
    private var gameTimer: Timer?
    private var timer: Timer?
    private var displayDuration: TimeInterval = 1
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var gameFieldView: UIView!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var actionButton: UIButton!
    @IBOutlet weak var shapeX: NSLayoutConstraint!
    @IBOutlet weak var shapeY: NSLayoutConstraint!
    @IBOutlet weak var gameObject: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gameFieldView.layer.borderWidth = 1
        gameFieldView.layer.borderColor = UIColor.gray.cgColor
        gameFieldView.layer.cornerRadius = 5
    }

    @IBAction func stepperChanged(_ sender: UIStepper) {
        updateUI()
    }
    
    @IBAction func actionButtonTapped(_ sender: UIButton) {
        if isGameActive {
            stopGame()
        } else {
            startGame()
        }
    }
    
    private func startGame() {
        timer?.invalidate()
        timer = Timer.scheduledTimer(timeInterval: displayDuration,
                                         target: self,
                                         selector: #selector(moveImage),
                                         userInfo: nil,
                                         repeats: true
        )
        timer?.fire()
        gameTimer?.invalidate()
        gameTimer = Timer.scheduledTimer(timeInterval: 1,
                                         target: self,
                                         selector: #selector(ganeTimeTick),
                                         userInfo: nil,
                                         repeats: true
        )
        gameTimeLeft = stepper.value
        isGameActive = true
        updateUI()
    }
    
    private func stopGame() {
        isGameActive = false
        updateUI()
        gameTimer?.invalidate()
        timer?.invalidate()
    }
    
    private func updateUI() {
        stepper.isEnabled = !isGameActive
        if isGameActive {
            timeLabel.text = "Осталось \(Int(gameTimeLeft)) сек"
            actionButton.setTitle("Остановить", for: .normal)
        } else {
            timeLabel.text = "Время \(Int(stepper.value)) сек"
            actionButton.setTitle("Начать", for: .normal)
        }
    }
    
    @objc private func ganeTimeTick() {
        gameTimeLeft -= 1
        if gameTimeLeft <= 0 {
            stopGame()
        } else {
            updateUI()
        }
    }
    
    @objc private func moveImage() {
        let maxX = gameFieldView.bounds.maxX - gameObject.frame.width
        let maxY = gameFieldView.bounds.maxY - gameObject.frame.height
        shapeX.constant = CGFloat(arc4random_uniform(UInt32(maxX)))
        shapeY.constant = CGFloat(arc4random_uniform(UInt32(maxY)))
    }
}

