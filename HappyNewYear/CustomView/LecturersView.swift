//
//  LecturersView.swift
//  HappyNewYear
//
//  Created by Hoang Tung on 12/29/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import UIKit

class LecturersView: UIView {
    
    var timer: Timer!
    
    var lecturersLabelLeadingAnchor: NSLayoutConstraint!
    
    let numberLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "16"
        label.textColor = hexStringToUIColor(hex: "FFE3F1")
        label.font = .boldSystemFont(ofSize: 300)
        return label
    }()
    
    let lecturersLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Giảng Viên"
        label.textColor = hexStringToUIColor(hex: "FFE3F1")
        label.font = .boldSystemFont(ofSize: 50)
        label.backgroundColor = .clear
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = hexStringToUIColor(hex: "FF63B4")
        
        self.addSubview(numberLabel)
        self.addSubview(lecturersLabel)
        
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLayout() {
        numberLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 50).isActive = true
        numberLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        numberLabel.widthAnchor.constraint(equalToConstant: 350).isActive = true
        numberLabel.heightAnchor.constraint(equalToConstant: 350).isActive = true
        
        lecturersLabel.topAnchor.constraint(equalTo: numberLabel.bottomAnchor, constant: 0).isActive = true
        lecturersLabelLeadingAnchor = lecturersLabel.leadingAnchor.constraint(equalTo: numberLabel.leadingAnchor, constant: -300)
        lecturersLabelLeadingAnchor.isActive = true
        lecturersLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
        lecturersLabel.heightAnchor.constraint(equalToConstant: 65).isActive = true
    }
    
    func runTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(run), userInfo: nil, repeats: true)
    }
    
    @objc func run() {
        if lecturersLabelLeadingAnchor.constant < CGFloat(120) {
            lecturersLabelLeadingAnchor.constant += 4
        } else {
            timer.invalidate()
        }
        
    }
}
