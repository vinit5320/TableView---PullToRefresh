//
//  SampleCell.swift
//  TableView Loading
//
//  Created by Vinit Jasoliya on 9/29/15.
//  Copyright (c) 2015 swiftyOS. All rights reserved.
//

import UIKit

class SampleCell: UITableViewCell {
    
    let color = UIColor(red:132/255, green: 210/255, blue: 246/255, alpha: 1)

    override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let iconMock = UIView()
        iconMock.backgroundColor = UIColor(red:170/255, green: 210/255, blue: 246/255, alpha: 1)
        iconMock.frame = CGRect(x: 16, y: 16, width: 60, height: 60)
        iconMock.layer.cornerRadius = 10
        self.addSubview(iconMock)
        
        let label = UILabel(frame: CGRectMake(25, 25, 30, 30))
        label.center = CGPointMake(30, 30)
        label.textAlignment = NSTextAlignment.Center
        label.text = "S"
        label.textColor = UIColor.whiteColor()
        iconMock.addSubview(label)

        let lineLeft:CGFloat = iconMock.frame.right + 16
        let lineMargin:CGFloat = 12
        
        let line1 = CGRect(x: lineLeft, y: 12 + lineMargin + 10, width: 100, height: 6)
        let line2 = CGRect(x: lineLeft, y: line1.bottom + lineMargin, width: 180, height: 5)
        addLine(line1)
        addLine(line2)
        
        let sepalator = UIView()
        sepalator.frame = CGRect(x: 0, y: 0, width: frame.width + 50, height: 1)
        sepalator.backgroundColor = UIColor.grayColor().colorWithAlphaComponent(0.2)
        self.addSubview(sepalator)
    }


    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func addLine(frame:CGRect) {
        let line = UIView(frame:frame)
        line.layer.cornerRadius = frame.height / 2
        line.backgroundColor = color
        self.addSubview(line)
    }
}

















