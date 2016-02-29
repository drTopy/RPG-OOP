//
//  ViewController.swift
//  RPG-OOP
//
//  Created by Thiago Costa on 2/29/16.
//  Copyright © 2016 Thiago Costa. All rights reserved.
// Graphs are not to be used commercially. Only as tutorial format

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lblPrint: UILabel!
    @IBOutlet var lblPlayer: UILabel!
    @IBOutlet var lblEnemy: UILabel!
    @IBOutlet var imgEnemy: UIImageView!
    @IBOutlet var btnChest: UIButton!
    
    
    var player: Player!
    var enemy: Enemy!
    var chestMessage: String?
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player(name: "Dirty Laundry", hp: 110, attackPwr: 20)
        
        generateRandomEnemy()
        
        lblPlayer.text = "\(player.hp) HP"
    }
    
    func generateRandomEnemy() {
        
        let rand = Int(arc4random_uniform(2))
        
        if rand == 0 {
            enemy = Kimara(startingHp: 50, attackPwr: 12)
        }else{
            enemy = DevilWizard(startingHp: 60, attackPwr: 15)
        }
        
        imgEnemy.hidden = false
        lblPrint.text = "Press the attack button to attack"
        
    }
    
    
    @IBAction func onAttackPressedBtn(sender: AnyObject) {
        
        if enemy.attemptAttack(player.attachPwr){
            lblPrint.text = "Attacked \(enemy.type) for \(player.attachPwr) HP"
            lblEnemy.text = "\(enemy.hp) HP"
        }else {
            lblPrint.text = "Attack was unseccessful!"
        }
        
        if let loot = enemy.dropLoot(){
           player.addItemToInventory(loot)
            chestMessage = "\(player.name) found \(loot)"
            btnChest.hidden = false
        }
        
        if !enemy.isAlive {
            lblEnemy.text = ""
            lblPrint.text = "Killed \(enemy.type)"
            imgEnemy.hidden = true
        }
    }
    
    @IBAction func onChestClickBtn(sender: AnyObject) {
        btnChest.hidden = true
        lblPrint.text = chestMessage
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "generateRandomEnemy", userInfo: nil, repeats: false)
    }
    
    

    
}

