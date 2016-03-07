//
//  ViewController.swift
//  tableviewexample
//
//  Created by ashok.londhe on 03/03/16.
//  Copyright © 2016 ashok.londhe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(animated: Bool) {
         self.navigationController?.setNavigationBarHidden(true, animated: true)
        self.view.layoutIfNeeded()
    }
    override func viewWillDisappear(animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.view.layoutIfNeeded()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

