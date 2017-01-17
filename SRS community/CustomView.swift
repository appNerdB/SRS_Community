//
//  CustomView.swift
//  SRS community
//
//  Created by Benny Franke Sounddesign on 17/01/17.
//  Copyright © 2017 ShowRescueService. All rights reserved.
//

import UIKit

class CustomView: UIView {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.shadowColor = SHADOW_COLOR
        layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5.0
        
    }

}
