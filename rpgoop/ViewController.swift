//
//  ViewController.swift
//  rpgoop
//
//  Created by Math LLC on 6/14/16.
//  Copyright © 2016 Math LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Outlets

    @IBOutlet weak var printLbl: UILabel!
    
    
    @IBOutlet weak var playerHpLbl: UILabel!
    
    
    @IBOutlet weak var enemyHpLbl: UILabel!
    
    
    @IBOutlet weak var enemyImg: UIImageView!
    
    
    @IBOutlet weak var chestBtn: UIButton!
    
    //Characters
    
    var player: Player!
    var enemy: Enemy!
    var chestMsg: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        player = Player(name: "Wicked Pissa", hp: 110, attackPwr: 20)
        
        generateRandomEnemy()
        
        playerHpLbl.text = "\(player.hp) HP"
    }
    
    func generateRandomEnemy() {
        let rand = Int(arc4random_uniform(2))
        
        if rand == 0 {
            enemy = Chimara(startingHp: 50, attackPwr: 12)
        } else {
            enemy = DevilWizard(startingHp: 60, attackPwr: 15)
        }
        
        enemyImg.hidden = false
    }
    
    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
    
    @IBAction func onChestTapped(sender: AnyObject) {
        chestBtn.hidden = true
        printLbl.text = chestMsg
        
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "generateRandomEnemy", userInfo: nil, repeats: false)
    }

    @IBAction func attackBtnTapped(sender: AnyObject) {
        
        if enemy.attemptAttack(player.attackPwr) {
            printLbl.text = "Attacked \(enemy.type) for \(player.attackPwr) HP"
            enemyHpLbl.text = "\(enemy.hp) HP"
        } else {
            printLbl.text = "Attack was unsuccessful!"
        }
        
        if let loot = enemy.dropLoot() {
            player.addItemToInventory(loot)
            chestMsg = "\(player.name) found \(loot)"
            chestBtn.hidden = false
        }
        
        if !enemy.isAlive {
            enemyHpLbl.text = ""
            printLbl.text = "\(player.name) killed \(enemy.type)"
            enemyImg.hidden = true
        }
    }

}

