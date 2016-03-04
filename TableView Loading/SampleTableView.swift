//
//  SampleTableView.swift
//  TableView Loading
//
//  Created by Vinit Jasoliya on 9/29/15.
//  Copyright (c) 2015 swiftyOS. All rights reserved.
//

import UIKit

class SampleTableView: UITableView, UITableViewDelegate, UITableViewDataSource {
    
    override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
        self.delegate = self
        self.dataSource = self
        self.registerClass(SampleCell.self, forCellReuseIdentifier: "SampleCell")
        self.separatorStyle = UITableViewCellSeparatorStyle.None
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int  {
        return 30
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath:NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("SampleCell", forIndexPath: indexPath) as! SampleCell
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 92
    }
}