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
    var label: UILabel!
    var label2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel()
        label.frame = CGRect.init(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"

        self.view.addSubview(label)
        self.label = label
        
        
        let label2 = UILabel()
        label2.frame = CGRect.init(x: 250, y: 150, width: 60, height: 60)
        label2.text = "0"
        
        self.view.addSubview(label2)
        self.label2 = label2

        
        let button = UIButton()
        button.frame = CGRect.init(x: 150, y: 250, width: 60, height: 60)
        button.setTitle("Plus", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(button)

        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
 
    
        let button2 = UIButton()
        button2.frame = CGRect.init(x: 150, y: 300, width: 60, height: 60)
        button2.setTitle("Minus", for: .normal)
        button2.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(button2)
        
        button2.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControlEvents.touchUpInside)
    }

    func updateLabels(newString:String) {
        self.label.text = newString
        self.label2.text = newString
    }

    func incrementCount() {
        self.count += 1
        updateLabels(newString: "\(self.count)")
   }

    func decrementCount() {
        self.count -= 1
        updateLabels(newString: "\(self.count)")
    }

}

