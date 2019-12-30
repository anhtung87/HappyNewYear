//
//  IntroView.swift
//  HappyNewYear
//
//  Created by Hoang Tung on 12/29/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import UIKit

class IntroView: UIView {
    
    var timer: Timer!
    let startCenterPoint: CGFloat = -300
    var techmasterLabelCenterAnchor: NSLayoutConstraint!
    var yearLabelCenterAnchor: NSLayoutConstraint!
    var decriptionLabelCenterAnchor: NSLayoutConstraint!
    
    let techmasterLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "TECHMASTER"
        label.font = .boldSystemFont(ofSize: 46)
        label.numberOfLines = 3
        label.textAlignment = .left
        label.textColor = hexStringToUIColor(hex: "E3EEFF")
        return label
    }()
    
    let yearLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "2019"
        label.font = .boldSystemFont(ofSize: 70)
        label.numberOfLines = 3
        label.textAlignment = .left
        label.textColor = hexStringToUIColor(hex: "E3EEFF")
        return label
    }()
    
    let decriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1 chặng đường"
        label.font = .boldSystemFont(ofSize: 40)
        label.numberOfLines = 3
        label.textAlignment = .left
        label.textColor = hexStringToUIColor(hex: "E3EEFF")
        return label
    }()
    
    let hideView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = hexStringToUIColor(hex: "3B84F1")
        return view
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = hexStringToUIColor(hex: "3B84F1")
        
        self.addSubview(techmasterLabel)
        self.addSubview(yearLabel)
        self.addSubview(decriptionLabel)
        self.addSubview(hideView)
        
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLayout() {
        techmasterLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 200).isActive = true
        techmasterLabelCenterAnchor = techmasterLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: startCenterPoint)
        techmasterLabelCenterAnchor.isActive = true
        techmasterLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        techmasterLabel.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.8).isActive = true
        
        yearLabel.topAnchor.constraint(equalTo: techmasterLabel.bottomAnchor, constant: 32).isActive = true
        yearLabelCenterAnchor = yearLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: startCenterPoint)
        yearLabelCenterAnchor.isActive = true
        yearLabel.heightAnchor.constraint(equalToConstant: 60).isActive = true
        yearLabel.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.8).isActive = true
        
        decriptionLabel.topAnchor.constraint(equalTo: yearLabel.bottomAnchor, constant: 32).isActive = true
        decriptionLabelCenterAnchor = decriptionLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: startCenterPoint)
        decriptionLabelCenterAnchor.isActive = true
        decriptionLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        decriptionLabel.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.8).isActive = true
        
        hideView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        hideView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        hideView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        hideView.widthAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func runTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.02, target: self, selector: #selector(run), userInfo: nil, repeats: true)
    }
    
    @objc func run() {
        if techmasterLabelCenterAnchor.constant < CGFloat(50) {
            techmasterLabelCenterAnchor.constant += 5
        } else {
            if yearLabelCenterAnchor.constant < CGFloat(50) {
                yearLabelCenterAnchor.constant += 5
            } else {
                if decriptionLabelCenterAnchor.constant < CGFloat(50) {
                    decriptionLabelCenterAnchor.constant += 5
                } else {
                    timer.invalidate()
                }
            }
        }
    }
}
