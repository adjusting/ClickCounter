//
//  ViewController.swift
//  ClickCounter
//
//  Created by Justin Gareau on 3/19/17.
//  Copyright © 2017 Justin Gareau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    func updateLabel(newString:String) {
        self.label.text = newString
    }

    @IBAction func incrementCount() {
        self.count += 1
        updateLabel(newString: "\(self.count)")
   }

    func decrementCount() {
        self.count -= 1
        updateLabel(newString: "\(self.count)")
    }

    func toggleColour() {
        if self.view.backgroundColor == UIColor.white {
            self.view.backgroundColor = UIColor.lightGray
        } else {
            self.view.backgroundColor = UIColor.white
        }
        
    }
}

