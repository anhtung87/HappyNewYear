//
//  TimeView.swift
//  HappyNewYear
//
//  Created by Hoang Tung on 12/30/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import UIKit

class TimeView: UIView {
    
    let numberLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = ">700"
        label.textColor = hexStringToUIColor(hex: "E1C8FF")
        label.font = .boldSystemFont(ofSize: 120)
        return label
    }()
    
    let classLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "tiết học"
        label.textColor = hexStringToUIColor(hex: "E1C8FF")
        label.font = .boldSystemFont(ofSize: 40)
        label.backgroundColor = .clear
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.backgroundColor = hexStringToUIColor(hex: "7821E3")
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
        
        classLabel.topAnchor.constraint(equalTo: numberLabel.bottomAnchor, constant: 0).isActive = true
        classLabel.leadingAnchor.constraint(equalTo: numberLabel.leadingAnchor, constant: 200).isActive = true
        classLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
        classLabel.heightAnchor.constraint(equalToConstant: 65).isActive = true
    }

}
