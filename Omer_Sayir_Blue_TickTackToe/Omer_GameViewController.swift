//
//  Omer_GameViewController.swift
//  Omer_Sayir_Blue_TickTackToe
//
//  Created by Omer Cagri Sayir on 7.10.2024.
//

import UIKit

class Omer_GameViewController: UIViewController {
    // MARK: - Class variables

    var theGameModel = Omer_GameModel()
    var gameFinished = false

    // MARK: - Outlets

    @IBOutlet var gameStateLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    // MARK: - IBActions

    @IBAction func squareTouched(_ sender: UIButton) {
        print(sender.tag)
        if sender.currentTitle == "X" || sender.currentTitle == "O" || gameFinished {
            return
        }
        sender.setTitle(theGameModel.whoseTurn, for: .normal)
        theGameModel.playMove(tag: sender.tag)

        if theGameModel.isGameFinished() {
            let winner = theGameModel.whoWon
            if !winner.isEmpty {
                gameStateLabel.text = winner + " won!"
            } else {
                gameStateLabel.text = "Draw!"
            }
            
            gameFinished = true
        } else {
            gameStateLabel.text = theGameModel.whoseTurn + "'s turn"
        }
    }

    /*
     // MARK: - Navigation

     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
     }
     */
}
