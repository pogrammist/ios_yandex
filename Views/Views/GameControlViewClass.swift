//
//  GameControlViewClass.swift
//  VIews
//
//  Created by user on 02.07.2020.
//  Copyright © 2020 user. All rights reserved.
//

import UIKit

@IBDesignable class GameControlViewClass: UIView {
    private func loadViewFromXib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "GameControlView", bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first! as! UIView
    }
}
