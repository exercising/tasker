//
//  Task.swift
//  tasker
//
//  Created by Dvid Silva on 9/7/14.
//  Copyright (c) 2014 hackership. All rights reserved.
//

import Foundation

struct Task {
    let title: String
    let notes: String
    
    init(title: String, notes: String) {
        self.title = title
        self.notes = notes
    }
}
