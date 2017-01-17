//
//  customTF.swift
//  SRS community
//
//  Created by Benny Franke Sounddesign on 17/01/17.
//  Copyright © 2017 ShowRescueService. All rights reserved.
//

import UIKit

class customTF: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderColor = SHADOW_COLOR
        layer.borderWidth = 1.0
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = self.frame.height/2
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10.0, dy: 0.0)
    }

}
