//
//  UIButton+Extension.swift
//  WeeklyFinder
//
//  Created by Николай Басов on 29.01.2021.
//

import UIKit

extension UIButton {
    func findDay() {
        UIView.animate(withDuration: 0.2, delay: 0, options: [.autoreverse]) {
            self.transform = CGAffineTransform(scaleX: 0.6, y: 0.6)
        } completion: { _ in
            self.transform = .identity
        }
    }
}
