//
//  Omer_GameModel.swift
//  Omer_Sayir_Blue_TickTackToe
//
//  Created by Omer Cagri Sayir on 7.10.2024.
//

import Foundation

class Omer_GameModel {
    var whoseTurn = "X"
    var numberOfMovesPlayed = 0
    var lastPlayed = ""
    var whoWon = ""

    var squareContents = Array(repeating: "", count: 10)

    let winningCombinations: [Array<Int>] = [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9],
        [1, 4, 7],
        [2, 5, 8],
        [3, 6, 9],
        [1, 5, 9],
        [3, 5, 7],
    ]

    func playMove(tag: Int) {
        squareContents[tag] = whoseTurn
        lastPlayed = whoseTurn
        whoseTurn = (whoseTurn == "X") ? "O" : "X"
        numberOfMovesPlayed += 1
    }

    func isGameFinished() -> Bool {
        if numberOfMovesPlayed < 5 {
            return false
        }

        // Check if somebody has won.
        for winnigCombo in winningCombinations {
            let index1 = winnigCombo[0]
            let index2 = winnigCombo[1]
            let index3 = winnigCombo[2]

            if squareContents[index1] == lastPlayed
                && squareContents[index2] == lastPlayed
                && squareContents[index3] == lastPlayed {
                whoWon = lastPlayed
                return true
            }
        }

        if numberOfMovesPlayed == 9 {
            return true
        }

        return false
    }
}
