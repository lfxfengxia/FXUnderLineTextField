//
//  FXUnderLineTextField.swift
//  SwiftDemo
//
//  Created by lingyongdai on 2018/6/21.
//  Copyright © 2018年 lingyongdai. All rights reserved.
//

import UIKit

class FXUnderLineTextField: UITextField {

    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    
    public var lineH : CGFloat = 0.8
    public var lineColor = UIColor.lightGray

    //方法一
    override func draw(_ rect: CGRect) {
        if let ctf = UIGraphicsGetCurrentContext() {
        
            ctf.setFillColor(lineColor.cgColor)
            ctf.fill(CGRect(x: 0, y: self.frame.size.height - lineH, width: self.frame.size.width, height: lineH))
        }
    }


    /*
     //方法二
     override func draw(_ rect: CGRect) {
         if let ctf = UIGraphicsGetCurrentContext() {
     
             ctf.move(to: CGPoint(x: 0, y: self.frame.size.height - lineH))
             ctf.addLine(to: CGPoint(x: self.frame.size.width, y: self.frame.size.height - lineH))
             ctf.setStrokeColor(lineColor.cgColor)
             ctf.setLineWidth(1.0)
             ctf.strokePath()
         }
     }
     */
}
