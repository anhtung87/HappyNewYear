//
//  ClassView.swift
//  HappyNewYear
//
//  Created by Hoang Tung on 12/30/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import UIKit

class ClassView: UIView {
    
    var timer: Timer!
    var classLabelTopAnchor: NSLayoutConstraint!
    
    let numberLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "106"
        label.textColor = hexStringToUIColor(hex: "CEFCEE")
        label.font = .boldSystemFont(ofSize: 200)
        return label
    }()
    
    let classLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Lớp học"
        label.textColor = hexStringToUIColor(hex: "CEFCEE")
        label.font = .boldSystemFont(ofSize: 40)
        label.backgroundColor = .clear
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = hexStringToUIColor(hex: "15A176")
        
        self.addSubview(numberLabel)
        self.addSubview(classLabel)
        
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLayout() {
        numberLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 200).isActive = true
        numberLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        numberLabel.widthAnchor.constraint(equalToConstant: 414).isActive = true
        numberLabel.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        classLabelTopAnchor = classLabel.topAnchor.constraint(equalTo: numberLabel.bottomAnchor, constant: 500)
        classLabelTopAnchor.isActive = true
        classLabel.leadingAnchor.constraint(equalTo: numberLabel.leadingAnchor, constant: 200).isActive = true
        classLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
        classLabel.heightAnchor.constraint(equalToConstant: 65).isActive = true
    }
    
    func runTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(run), userInfo: nil, repeats: true)
    }
    
    @objc func run() {
        if classLabelTopAnchor.constant > CGFloat(0) {
            classLabelTopAnchor.constant -= 6
        } else {
            timer.invalidate()
        }
        
    }
}
