//
//  ViewController.swift
//  lifecounter
//
//  Created by Aina Engelbrekt on 4/19/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var p1Lives = 20
    var p2Lives = 20
    
    
    @IBOutlet var banner: UILabel!
    
    @IBOutlet var player1reference: UILabel!
    
    
    @IBAction func p1minus1(_ sender: Any) {
        p1Lives -= 1
        changePlayer1Lives()
    }
    
    @IBAction func p1plus1(_ sender: Any) {
        p1Lives += 1
        changePlayer1Lives()
    }
    
    @IBAction func p1minus5(_ sender: Any) {
        p1Lives -= 5
        changePlayer1Lives()
    }
    
    @IBAction func p1plus5(_ sender: Any) {
        p1Lives += 5
        changePlayer1Lives()
    }
    
    func changePlayer1Lives(){
        player1reference.text = "Player 1 lives:  \(p1Lives)"
        p1LoserBanner()

    }
    
    func p1LoserBanner() {
        if p1Lives <= 0 {
            banner.text = "Player 1 Loses!"
        }
    }
}

