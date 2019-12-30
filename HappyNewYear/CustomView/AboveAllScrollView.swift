//
//  AboveAllScrollView.swift
//  HappyNewYear
//
//  Created by Hoang Tung on 12/29/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import UIKit

class AboveAllScrollView: UIScrollView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.contentSize = CGSize(width: UIScreen.main.bounds.maxX * 5 + 12, height: UIScreen.main.bounds.maxY * 3 + 6)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
