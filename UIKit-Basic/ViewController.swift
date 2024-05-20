//
//  ViewController.swift
//  UIKit-Basic
//
//  Created by Jungjin Park on 2024-05-20.
//

import UIKit

class ViewController: UIViewController {
    let stepper = UIStepper()
    let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "value: 0"
        
        stepper.minimumValue = 0
        stepper.maximumValue = 10
        stepper.stepValue = 1
        stepper.value = 0
        stepper.addAction(UIAction {[weak self] _ in
            self?.label.text = "value: \(self?.stepper.value ??  0)"
        }, for: .valueChanged)
        
        let stackView = UIStackView(arrangedSubviews: [label, stepper])
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.alignment = .center
        
        view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
}

