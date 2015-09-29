//
//  ViewController.swift
//  TableView Loading
//
//  Created by Vinit Jasoliya on 9/29/15.
//  Copyright (c) 2015 swiftyOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.view.backgroundColor = UIColor(red:89/255, green: 165/255, blue: 216/255, alpha: 1)
        let bodyView = UIView()
        bodyView.frame = self.view.frame
        bodyView.frame.y += 20 + 44
        self.view.addSubview(bodyView)
        
        let tableView = SampleTableView(frame: self.view.frame, style: UITableViewStyle.Plain)
        
        let tableViewWrapper = PullToBounceWrapper(scrollView: tableView)
        bodyView.addSubview(tableViewWrapper)
        
        tableViewWrapper.didPullToRefresh = {
            NSTimer.schedule(delay: 2) { timer in
                tableViewWrapper.stopLoadingAnimation()
            }
        }
        
        makeHeader()
    }
    
    func makeHeader() {
        let headerView = UIView()
        headerView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 64)
        headerView.backgroundColor = UIColor(red:89/255, green: 165/255, blue: 216/255, alpha: 1)
        self.view.addSubview(headerView)
        
        let headerLine = UILabel()
        headerLine.frame = CGRect(x: 0, y: 0, width: 120, height: 100)
        headerLine.center = CGPoint(x: headerView.frame.center.x + 25, y: 20 + 44/2)
        headerLine.textColor = UIColor.whiteColor()
        headerLine.text = "SwiftyOS"
        headerView.addSubview(headerLine)
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

