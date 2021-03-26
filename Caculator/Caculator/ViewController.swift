//
//  ViewController.swift
//  Caculator
//
//  Created by CNTT on 3/26/21.
//  Copyright © 2021 fit.tdc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: Properties
    
    @IBOutlet weak var callScreen: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //MARK: Button's Action
    
    @IBAction func btnPress(_ sender: UIButton) {
        callScreen.text = callScreen.text! + sender.currentTitle!
    }
    

}

