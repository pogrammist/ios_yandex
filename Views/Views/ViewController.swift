//
//  ViewController.swift
//  VIews
//
//  Created by user on 01.07.2020.
//  Copyright © 2020 user. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var gameTimer: Timer?
    private var timer: Timer?
    private var displayDuration: TimeInterval = 1
    private var score = 0
    
    @IBOutlet weak var gameControl: GameControlViewClass!
    @IBOutlet weak var gameFieldView: GameFieldView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gameFieldView.layer.borderWidth = 1
        gameFieldView.layer.borderColor = UIColor.gray.cgColor
        gameFieldView.layer.cornerRadius = 5
        updateUI()
        gameFieldView.shapeHitHandler = { [weak self] in
            self?.objectTapped()
        }
        gameControl.startStopHandler = { [weak self] in
            self?.actionButtonTapped()
        }
        gameControl.gameDuration = 20
    }
    
    func actionButtonTapped() {
        if gameControl.isGameActive {
            stopGame()
        } else {
            startGame()
        }
    }
    
    func objectTapped() {
        guard gameControl.isGameActive else { return }
        repositionImageWithTimer()
        score += 1
    }
    
    private func startGame() {
        score = 0
        repositionImageWithTimer()
        gameTimer?.invalidate()
        gameTimer = Timer.scheduledTimer(timeInterval: 1,
                                         target: self,
                                         selector: #selector(ganeTimeTick),
                                         userInfo: nil,
                                         repeats: true
        )
        gameControl.gameTimeLeft = gameControl.gameDuration
        gameControl.isGameActive = true
        updateUI()
    }
    
    private func stopGame() {
        gameControl.isGameActive = false
        updateUI()
        gameTimer?.invalidate()
        timer?.invalidate()
        scoreLabel.text = "Последний счет: \(score)"
    }
    
    private func updateUI() {
        gameFieldView.isShapeHidden = !gameControl.isGameActive
        
    }
    
    @objc private func ganeTimeTick() {
        gameControl.gameTimeLeft -= 1
        if gameControl.gameTimeLeft <= 0 {
            stopGame()
        } else {
            updateUI()
        }
    }
    
    @objc private func moveImage() {
        gameFieldView.randomizeShapes()
    }
    
    private func repositionImageWithTimer() {
        timer?.invalidate()
        timer = Timer.scheduledTimer(timeInterval: displayDuration,
                                         target: self,
                                         selector: #selector(moveImage),
                                         userInfo: nil,
                                         repeats: true
        )
        timer?.fire()
    }
}

