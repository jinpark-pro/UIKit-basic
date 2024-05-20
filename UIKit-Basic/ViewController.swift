//
//  ViewController.swift
//  UIKit-Basic
//
//  Created by Jungjin Park on 2024-05-20.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let circleView = UIView()
        circleView.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        circleView.backgroundColor = .yellow
        circleView.layer.cornerRadius = 50
        circleView.layer.borderWidth = 2
        circleView.layer.borderColor = UIColor.black.cgColor
        circleView.clipsToBounds = true
        
        let label = UILabel(frame: CGRect(x: 0, y: 40, width: 100, height: 20))
        label.text = "Hello, World!!!"
        circleView.addSubview(label)
        view.addSubview(circleView)
        
        let squareView = UIView()
        squareView.frame = CGRect(x: 220, y: 100, width: 100, height: 100)
        squareView.backgroundColor = .blue
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = squareView.bounds
        gradientLayer.colors = [UIColor.red.cgColor, UIColor.orange.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        squareView.layer.insertSublayer(gradientLayer, at: 0)
        
        view.addSubview(squareView)
    }
}

