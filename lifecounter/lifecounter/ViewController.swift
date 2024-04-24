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
    
    @IBOutlet var loserText: UILabel!
    
    
    @IBOutlet var player1reference: UILabel!
    
    
    @IBAction func p1plus1(_ sender: Any) {
        p1Lives += 1
        changePlayer1Lives()
    }
    
       
    @IBAction func p1minus1(_ sender: Any) {
        p1Lives -= 1
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
        LoserBanner()

    }

    
    func LoserBanner() {
        if (p1Lives > 0 && p2Lives > 0) {
            loserText.text = ""
        } else if (p2Lives <= 0 && p1Lives > 0) {
            loserText.text = "Player 2 Loses!"
        } else if (p1Lives <= 0 && p2Lives > 0) {
            loserText.text = "Player 1 Loses!"
        } else {
            loserText.text = ""
        }
    }
    
    
    @IBOutlet var p2referenceText: UILabel!
    
    
    
    
    
    @IBAction func p2minus1(_ sender: Any) {
        p2Lives -= 1
        changePlayer2Lives()
    }
    
    
    @IBAction func p2plus1(_ sender: Any) {
        p2Lives += 1
        changePlayer2Lives()
    }
    
    
    @IBAction func p2minus5(_ sender: Any) {
        p2Lives -= 5
        changePlayer2Lives()
    }
    
    
    @IBAction func p2plus5(_ sender: Any) {
        p2Lives += 5
        changePlayer2Lives()
    }
    
    
    func changePlayer2Lives(){
        p2referenceText.text = "Player 2 lives:  \(p2Lives)"
        LoserBanner()

    }
    
    
    
    
}

