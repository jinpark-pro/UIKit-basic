//
//  ViewController.swift
//  UIKit-Basic
//
//  Created by Jungjin Park on 2024-05-20.
//

import UIKit

extension UIColor {
    // 배경색에 어울리는 틴트 컬러를 계산하는 함수
    func appropriateTintColor() -> UIColor {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        
        self.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        
        // 밝기 계산 (RGB TO luminance)
        let luminance = 0.299 * red + 0.587 * green + 0.114 * blue
        
        // 밝기가 0.5 이상이면 어두운 색 텍스트, 아니면 밝은 색 텍스트
        return luminance > 0.5 ? UIColor.black : UIColor.white
    }
}

class ViewController: UIViewController {
    let segmentedControl = UISegmentedControl(items: ["Red", "Green", "Blue"])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentedControl.selectedSegmentIndex = 0
        view.backgroundColor = .red
        
        // 선택된 상태의 텍스트 색상을 검은색으로 설정
        let selectedTextAttributes: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.black]
        segmentedControl.setTitleTextAttributes(selectedTextAttributes, for: .selected)
        
        // 초기 상태에서 선택되지 않은 상태의 텍스트 색상 설정
        updateSegmentedControlTextColor()
        
        segmentedControl.addAction(UIAction { [weak self] _ in
            switch self?.segmentedControl.selectedSegmentIndex {
            case 0:
                self?.view.backgroundColor = .red
            case 1:
                self?.view.backgroundColor = .green
            case 2:
                self?.view.backgroundColor = .blue
            default:
                break
            }
        }, for: .valueChanged)
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        segmentedControl.selectedSegmentTintColor = .lightGray
        
        view.addSubview(segmentedControl)
        
        NSLayoutConstraint.activate([
            segmentedControl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20)
        ])
    }
    // 선택되지 않은 상태의 텍스트 색상을 업데이트하는 함수
    func updateSegmentedControlTextColor() {
        let textColor: UIColor = (view.backgroundColor?.appropriateTintColor()) ?? .white
        let normalTextAttributes: [NSAttributedString.Key: Any] = [.foregroundColor: textColor]
        segmentedControl.setTitleTextAttributes(normalTextAttributes, for: .normal)
    }
}

