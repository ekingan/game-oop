//
//  ViewController.swift
//  rpgoop
//
//  Created by Math LLC on 6/14/16.
//  Copyright © 2016 Math LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var printLbl: UILabel!
    
    
    @IBOutlet weak var playerHpLbl: UILabel!
    
    
    @IBOutlet weak var enemyHpLbl: UILabel!
    
    
    @IBOutlet weak var enemyImg: UIImageView!
    
    
    @IBOutlet weak var chestBtn: UIButton!
    
    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
    
    @IBAction func onChestTapped(sender: AnyObject) {
    }


}

