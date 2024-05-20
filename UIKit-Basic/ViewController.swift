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
        
        let imageView = UIImageView(image: UIImage(systemName: "hare.fill"))
        imageView.frame = CGRect(x: 50, y: 50, width: 100, height: 50)
        imageView.tintColor = .purple
        imageView.contentMode = .scaleAspectFit
        view.addSubview(imageView)
        
        let flagImageView = UIImageView(image: UIImage(systemName: "flag"))
        flagImageView.frame = CGRect(x: 50, y: 200, width: 100, height: 50)
        flagImageView.clipsToBounds = true
        flagImageView.contentMode = .scaleAspectFill
        view.addSubview(flagImageView)
    }
}

