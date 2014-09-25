//
//  TaskStore.swift
//  tasker
//
//  Created by Dvid Silva on 9/24/14.
//  Copyright (c) 2014 hackership. All rights reserved.
//

import Foundation

class TaskStore {
    class var sharedInstance: TaskStore {
    struct Static {
        static let instance = TaskStore()
        }
        return Static.instance
    }
    
    var tasks: [Task] = []
    
    var count: Int {
        return tasks.count
    }

    func add(task: Task) {
        tasks.append(task)
    }
    
    func replace(task: Task, atIndex index: Int) {
        tasks[index] = task
    }
    
    func get(index: Int) -> Task {
        return tasks[index]
    }

    func removeTaskAtIndex(index: Int) {
        tasks.removeAtIndex(index)
    }

}

