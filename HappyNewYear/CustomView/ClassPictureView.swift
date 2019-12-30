//
//  ClassPictureView.swift
//  HappyNewYear
//
//  Created by Hoang Tung on 12/30/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import UIKit

class ClassPictureView: UIView {
    
    let backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "wallpaper")
        return imageView
    }()
    
    let topImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "lop1")
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.layer.borderWidth = 2
        imageView.transform = CGAffineTransform(rotationAngle: 0.25)
        return imageView
    }()
    
    let centerImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "lop2")
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.layer.borderWidth = 2
        imageView.transform = CGAffineTransform(rotationAngle: -0.25)
        return imageView
    }()
    
    let bottomImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "lop3")
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.layer.borderWidth = 2
        imageView.transform = CGAffineTransform(rotationAngle: 0.15)
        return imageView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(backgroundImageView)
        self.addSubview(topImageView)
        self.addSubview(centerImageView)
        self.addSubview(bottomImageView)
        
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupLayout() {
        backgroundImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        
        topImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 100).isActive = true
        topImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50).isActive = true
        topImageView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        topImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        centerImageView.topAnchor.constraint(equalTo: topImageView.bottomAnchor, constant: 0).isActive = true
        centerImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50).isActive = true
        centerImageView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        centerImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        bottomImageView.topAnchor.constraint(equalTo: centerImageView.bottomAnchor, constant: 0).isActive = true
        bottomImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50).isActive = true
        bottomImageView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        bottomImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }
}
