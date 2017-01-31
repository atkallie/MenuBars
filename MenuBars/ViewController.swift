//
//  ViewController.swift
//  MenuBars
//
//  Created by Ahmed T Khalil on 11/23/16.
//  Copyright © 2016 kalikans. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()
    
    @IBAction func camera(_ sender: Any) {
        print("Camera Pressed")
        timer.invalidate()
    }
    
    func processTimer()->(){
        print("A second has passed")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //target is the view controller that we are working with
        //selector is what we want to happen every 1 second (i.e. the time interval)
        //userInfo is if we want to send any particular info with our timer
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

