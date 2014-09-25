//
//  DismissSegue.swift
//  tasker
//
//  Created by Dvid Silva on 9/7/14.
//  Copyright (c) 2014 hackership. All rights reserved.
//

import UIKit

@objc(DismissSegue) class DismissSegue: UIStoryboardSegue {
    override func perform() {
        (sourceViewController.presentingViewController as UIViewController!).dismissViewControllerAnimated(true, completion: nil)
    }
    
}
