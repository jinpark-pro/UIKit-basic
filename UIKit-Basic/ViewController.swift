//
//  ViewController.swift
//  UIKit-Basic
//
//  Created by Jungjin Park on 2024-05-20.
//

import UIKit

class ViewController: UIViewController {
    let toggleSwitch = UISwitch()
    let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "Switch is Off"
        label.textAlignment = .center
        
//        toggleSwitch.addTarget(self, action: #selector(switchChanged), for: .valueChanged)
        
//        toggleSwitch.addAction(UIAction { [unowned self] _ in
//            if self.toggleSwitch.isOn {
//                self.label.text = "Switch is On"
//            } else {
//                self.label.text = "Switch is Off"
//            }
//        }, for: .valueChanged)
        
        toggleSwitch.addAction(UIAction { [weak self] _ in
            if let isOn = self?.toggleSwitch.isOn, isOn {
                self?.label.text = "Switch is On"
            } else {
                self?.label.text = "Switch is Off"
            }
        }, for: .valueChanged)
        
        
        let stackView = UIStackView(arrangedSubviews: [toggleSwitch, label])
        
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 10
        
        view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
    
//    @objc func switchChanged(_ sender: UISwitch) {
//        if sender.isOn {
//            label.text = "Switch is On"
//        } else {
//            label.text = "Switch is Off"
//        }
//    }
}

