//
//  DetailViewController.swift
//  tasker
//
//  Created by Dvid Silva on 9/7/14.
//  Copyright (c) 2014 hackership. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
                            

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    
    @IBOutlet weak var notesView: UILabel!

    var detailItem: Task? {
        didSet {
            self.configureView()
        }
    }
    
    func changeSomething(task: Task) {
        detailItem = task
        self.configureView()
    }
    
    func configureView() {
        if let detail: Task = detailItem  {
            if let label = self.detailDescriptionLabel {
                label.text = detail.title
            }
            if let notes = notesView {
                notes.text = detail.notes
            }
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

