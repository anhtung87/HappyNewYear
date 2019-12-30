//
//  StudentView.swift
//  HappyNewYear
//
//  Created by Hoang Tung on 12/30/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import UIKit

class StudentView: UIView {

    let numberLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "10.536"
        label.textColor = hexStringToUIColor(hex: "E1C8FF")
        label.font = .boldSystemFont(ofSize: 100)
        return label
    }()
    
    let userLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "tài khoản online"
        label.textColor = hexStringToUIColor(hex: "E1C8FF")
        label.font = .boldSystemFont(ofSize: 40)
        label.backgroundColor = .clear
        return label
    }()
    
    let number2Label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "2.838"
        label.textColor = hexStringToUIColor(hex: "D8CDFF")
        label.font = .boldSystemFont(ofSize: 100)
        return label
    }()
    
    let studentLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "học viên"
        label.textColor = hexStringToUIColor(hex: "D8CDFF")
        label.font = .boldSystemFont(ofSize: 40)
        label.backgroundColor = .clear
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.backgroundColor = hexStringToUIColor(hex: "491FD4")
        self.addSubview(numberLabel)
        self.addSubview(userLabel)
        self.addSubview(number2Label)
        self.addSubview(studentLabel)
        
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLayout() {
        numberLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 100).isActive = true
        numberLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        numberLabel.widthAnchor.constraint(equalToConstant: 414).isActive = true
        numberLabel.heightAnchor.constraint(equalToConstant: 120).isActive = true
        
        userLabel.topAnchor.constraint(equalTo: numberLabel.bottomAnchor, constant: 0).isActive = true
        userLabel.leadingAnchor.constraint(equalTo: numberLabel.leadingAnchor, constant: 100).isActive = true
        userLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
        userLabel.heightAnchor.constraint(equalToConstant: 65).isActive = true
        
        number2Label.topAnchor.constraint(equalTo: userLabel.bottomAnchor, constant: 100).isActive = true
        number2Label.leadingAnchor.constraint(equalTo: numberLabel.leadingAnchor, constant: 0).isActive = true
        number2Label.widthAnchor.constraint(equalToConstant: 414).isActive = true
        number2Label.heightAnchor.constraint(equalToConstant: 120).isActive = true
        
        studentLabel.topAnchor.constraint(equalTo: number2Label.bottomAnchor, constant: 0).isActive = true
        studentLabel.leadingAnchor.constraint(equalTo: number2Label.leadingAnchor, constant: 200).isActive = true
        studentLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
        studentLabel.heightAnchor.constraint(equalToConstant: 65).isActive = true
    }

}
