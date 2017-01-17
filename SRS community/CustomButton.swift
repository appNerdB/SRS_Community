//
//  CustomButton.swift
//  SRS community
//
//  Created by Benny Franke Sounddesign on 17/01/17.
//  Copyright © 2017 ShowRescueService. All rights reserved.
//

import UIKit

class CustomButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.shadowColor = SHADOW_COLOR
        layer.shadowOpacity = 0.8
        layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        layer.shadowRadius = 2.0
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = self.frame.height/2
    }
}
