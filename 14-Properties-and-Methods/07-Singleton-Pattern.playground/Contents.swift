//: Playground - noun: a place where people can play

import UIKit

func playLevel1(){
    let gameManager = GameManager.defaultManager

    for _ in 0..<20{
        gameManager.addScore()
    }

    gameManager.score
    gameManager.level
}

func playLevel2(){
    let gameManager = GameManager.defaultManager
    
    for _ in 0..<30{
        gameManager.addScore()
    }
    
    gameManager.score
    gameManager.level
}

playLevel1()
playLevel2()

