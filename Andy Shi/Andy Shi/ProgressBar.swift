//
//  ProgressBar.swift
//  Andy Shi
//
//  Created by Andy Shi on 4/22/15.
//  Copyright (c) 2015 Andy Shi. All rights reserved.
//

import UIKit

class ProgressBar: UIView {
    let proLayer: CAShapeLayer = CAShapeLayer()
    let midLayer: CAShapeLayer = CAShapeLayer()
    let begLayer: CAShapeLayer = CAShapeLayer()
    let π = M_PI
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        createproLayer()
        createmidLayer()
        createbegLayer()
    }
    
    private func createproLayer() {
        let startAngle = CGFloat(0)
        let endAngle = CGFloat(-2*π)
        let centerPoint = CGPointMake(CGRectGetWidth(frame)/2 , CGRectGetHeight(frame)/2)
        let gradientMaskLayer = gradientMask()
        
        proLayer.path = UIBezierPath(arcCenter:centerPoint, radius: CGRectGetWidth(frame)/2 - 10.0, startAngle:startAngle, endAngle: endAngle, clockwise: false).CGPath
        proLayer.backgroundColor = UIColor.clearColor().CGColor
        proLayer.fillColor = nil
        proLayer.strokeColor = UIColor.blackColor().CGColor
        proLayer.lineWidth = 4.0
        proLayer.strokeStart = 0.0
        proLayer.strokeEnd = 0.0
        gradientMaskLayer.mask = proLayer
        layer.addSublayer(gradientMaskLayer)
    }

    private func createmidLayer() {
        let startAngle = CGFloat(0)
        let endAngle = CGFloat(-2*π)
        let centerPoint = CGPointMake(CGRectGetWidth(frame)/2 , CGRectGetHeight(frame)/2)
        let gradientMaskLayer = gradientMask()
        
        midLayer.path = UIBezierPath(arcCenter:centerPoint, radius: CGRectGetWidth(frame)/2 - 10.0, startAngle:startAngle, endAngle: endAngle, clockwise: false).CGPath
        midLayer.backgroundColor = UIColor.clearColor().CGColor
        midLayer.fillColor = nil
        midLayer.strokeColor = UIColor.blackColor().CGColor
        midLayer.lineWidth = 4.0
        midLayer.strokeStart = 0.0
        midLayer.strokeEnd = 0.0
        gradientMaskLayer.mask = midLayer
        layer.addSublayer(gradientMaskLayer)
    }
    
    private func createbegLayer() {
        let startAngle = CGFloat(0)
        let endAngle = CGFloat(-2*π)
        let centerPoint = CGPointMake(CGRectGetWidth(frame)/2 , CGRectGetHeight(frame)/2)
        let gradientMaskLayer = gradientMask()
        
        begLayer.path = UIBezierPath(arcCenter:centerPoint, radius: CGRectGetWidth(frame)/2 - 10.0, startAngle:startAngle, endAngle: endAngle, clockwise: false).CGPath
        begLayer.backgroundColor = UIColor.clearColor().CGColor
        begLayer.fillColor = nil
        begLayer.strokeColor = UIColor.blackColor().CGColor
        begLayer.lineWidth = 4.0
        begLayer.strokeStart = 0.0
        begLayer.strokeEnd = 0.0
        gradientMaskLayer.mask = begLayer
        layer.addSublayer(gradientMaskLayer)
    }
    
    
    private func gradientMask() -> CAGradientLayer {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.locations = [0.0, 1.0]
        let colorTop = UIColor(red: 51/255.0, green: 153/255.0, blue: 204/255.0, alpha: 1.0).CGColor
        let colorBottom = UIColor(red: 51/255.0, green: 255/255.0, blue: 204/255.0, alpha: 1.0).CGColor
        let arrayOfColors: [AnyObject] = [colorTop, colorBottom]
        gradientLayer.colors = arrayOfColors
        return gradientLayer
    }
    
    func animateProgressView(level: String) {
        if level == "pro"
        {
            proLayer.strokeEnd = 0.0
        }
        else if level == "mid"
        {
            midLayer.strokeEnd = 0.0
        }
        else if level == "beg"
        {
            begLayer.strokeEnd = 0.0
        }
        
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.fromValue = CGFloat(0.0)
        animation.toValue = CGFloat(1.0)
        animation.duration = 1.0
        animation.delegate = self
        animation.removedOnCompletion = false
        animation.additive = true
        animation.fillMode = kCAFillModeForwards
        
        if level == "pro"
        {
            proLayer.addAnimation(animation, forKey: "strokeEnd")
        }
        else if level == "mid"
        {
            midLayer.addAnimation(animation, forKey: "strokeEnd")
        }
        else if level == "beg"
        {
            begLayer.addAnimation(animation, forKey: "strokeEnd")
        }
    }
}
