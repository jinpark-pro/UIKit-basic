//
//  ViewController.swift
//  UIKit-Basic
//
//  Created by Jungjin Park on 2024-05-20.
//

import UIKit

class ViewController: UIViewController {
    let slider = UISlider()
    let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "value: 0.5"
        
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.value = 0.5
        slider.isContinuous = true
        slider.addAction(UIAction {[weak self] _ in
            self?.label.text = "value: \(String(format:"%.1f", self?.slider.value ??  0))"
        }, for: .valueChanged)
        
        let stackView = UIStackView(arrangedSubviews: [label, slider])
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.alignment = .fill
        
        view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
}

