//
//  GradientView.swift
//  VK-Client
//
//  Created by HappyRoman on 12/12/2022.
//

import UIKit

class GradientView: UIView {

    @IBInspectable var topColor: UIColor = .white  {
        didSet {
            setNeedsLayout()
        }
    }
    
    @IBInspectable var halfColor: UIColor = .white {
        didSet {
            setNeedsLayout()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = .white {
        didSet {
            setNeedsLayout()
        }
    }
    
    override func draw(_ rect: CGRect) {
        
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, halfColor.cgColor, bottomColor.cgColor]
        gradientLayer.locations = [0, 0.5 , 1]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = bounds
        layer.insertSublayer(gradientLayer, at: 0)
        
    }

    
}
