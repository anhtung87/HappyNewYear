//
//  PictureView.swift
//  HappyNewYear
//
//  Created by Hoang Tung on 12/28/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import UIKit

class PictureView: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.borderWidth = 3
        self.layer.borderColor = UIColor.white.cgColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
