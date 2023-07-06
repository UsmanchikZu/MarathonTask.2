//
//  ViewController.swift
//  Three buttons
//
//  Created by Зулейха on 04.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var oneButton = UIButton(configuration: .filled())
        oneButton.setTitle("First Botton", for: .normal)
        oneButton.setImage(UIImage(systemName: "arrow.forward.circle.fill"), for: .normal)
        oneButton.semanticContentAttribute = .forceRightToLeft
        
        oneButton.configuration?.titlePadding = 8
        oneButton.configuration?.imagePadding = 8
        oneButton.configuration?.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 14, bottom: 10, trailing: 14)
        
        view.addSubview(oneButton)
        
        oneButton.addTarget(self, action: #selector(firstClick), for: .touchUpInside)
        oneButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -350).isActive = true
        oneButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        oneButton.translatesAutoresizingMaskIntoConstraints = false
        
        let twoButton = UIButton(configuration: .filled())
        twoButton.setTitle("Second Medium Button", for: .normal)
        twoButton.setImage(UIImage(systemName: "arrow.forward.circle.fill"), for: .normal)
        twoButton.semanticContentAttribute = .forceRightToLeft

        twoButton.configuration?.titlePadding = 8
        twoButton.configuration?.imagePadding = 8
        twoButton.configuration?.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 14, bottom: 10, trailing: 14)
        
        view.addSubview(twoButton)
        
        twoButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -300).isActive = true
        twoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        twoButton.translatesAutoresizingMaskIntoConstraints = false
        twoButton.addTarget(self, action: #selector(secondButton), for: .touchUpInside)
        
        let threeButton = UIButton(configuration: .filled())
        threeButton.setTitle("Second Medium Button", for: .normal)
        threeButton.setImage(UIImage(systemName: "arrow.forward.circle.fill"), for: .normal)
        threeButton.semanticContentAttribute = .forceRightToLeft
        
        threeButton.configuration?.titlePadding = 8
        threeButton.configuration?.imagePadding = 8
        threeButton.configuration?.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 14, bottom: 10, trailing: 14)

        view.addSubview(threeButton)
        
        threeButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -250).isActive = true
        threeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        threeButton.translatesAutoresizingMaskIntoConstraints = false
        threeButton.addTarget(self, action: #selector(thirdButton), for: .touchUpInside)
        
    }

    
    @objc
    private func firstClick(viewToAminate: UIButton) {
        UIView.animate(withDuration: 0.10, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseIn, animations: {
            viewToAminate.transform = CGAffineTransform(scaleX: 0.92, y: 0.92)
        }) { (_) in
            UIView.animate(withDuration: 0.10, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseIn, animations: {
                viewToAminate.transform = CGAffineTransform(scaleX: 1, y: 1)
            }, completion: nil)
        }
    }

    @objc
    private func secondButton(viewToAminate: UIButton) {
        UIView.animate(withDuration: 0.10, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseIn, animations: {
            viewToAminate.transform = CGAffineTransform(scaleX: 0.92, y: 0.92)
        }) { (_) in
            UIView.animate(withDuration: 0.10, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseIn, animations: {
                viewToAminate.transform = CGAffineTransform(scaleX: 1, y: 1)
            }, completion: nil)
        }
    }
    
    @objc
    private func thirdButton(viewToAminate: UIButton) {
        UIView.animate(withDuration: 0.10, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseIn, animations: {
            viewToAminate.transform = CGAffineTransform(scaleX: 0.92, y: 0.92)
        }) { (_) in
            UIView.animate(withDuration: 0.10, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseIn, animations: {
                viewToAminate.transform = CGAffineTransform(scaleX: 1, y: 1)
            }, completion: nil)
        }
        present(NewViewController(), animated: true)
    }
}

