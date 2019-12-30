//
//  LecturerAvatarView.swift
//  HappyNewYear
//
//  Created by Hoang Tung on 12/30/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import UIKit

class LecturerAvatarView: UIView {
    
    let backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "wallpaper")
        return imageView
    }()
    
    let thayCuongImageView: CircleImageView = {
        let imageView = CircleImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        imageView.image = UIImage(named: "thayCuong")
        return imageView
    }()
    
    let thayHoangImageView: CircleImageView = {
        let imageView = CircleImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        imageView.image = UIImage(named: "thayHoang")
        return imageView
    }()
    
    let coYenImageView: CircleImageView = {
        let imageView = CircleImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        imageView.image = UIImage(named: "coYen")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    let coQuynhImageView: CircleImageView = {
        let imageView = CircleImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        imageView.image = UIImage(named: "coQuynh")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    let thayLongImageView: CircleImageView = {
        let imageView = CircleImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        imageView.image = UIImage(named: "thayLong")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(backgroundImageView)
        self.addSubview(thayCuongImageView)
        self.addSubview(thayHoangImageView)
        self.addSubview(coYenImageView)
        self.addSubview(coQuynhImageView)
        self.addSubview(thayLongImageView)
        
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
        
        thayCuongImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 100).isActive = true
        thayCuongImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50).isActive = true
        thayCuongImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        thayCuongImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        thayHoangImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 220).isActive = true
        thayHoangImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 250).isActive = true
        thayHoangImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        thayHoangImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        coYenImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 350).isActive = true
        coYenImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50).isActive = true
        coYenImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        coYenImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        coQuynhImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 490).isActive = true
        coQuynhImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 250).isActive = true
        coQuynhImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        coQuynhImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        thayLongImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 600).isActive = true
        thayLongImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50).isActive = true
        thayLongImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        thayLongImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
}
