//
//  CircleImageView.swift
//  HappyNewYear
//
//  Created by Hoang Tung on 12/30/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import UIKit

class CircleImageView: UIImageView {
    
    var circleLayer: CAShapeLayer!

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        circleLayer = CAShapeLayer()
        circleLayer.path = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: self.bounds.maxX, height: self.bounds.maxY), cornerRadius: self.bounds.maxX / 2).cgPath
        self.layer.addSublayer(circleLayer)
        self.layer.mask = circleLayer
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
