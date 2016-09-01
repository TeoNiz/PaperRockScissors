//
//  ResultViewController.swift
//  papierNozyceKamien
//
//  Created by Teodor Niżyński on 01.09.2016.
//  Copyright © 2016 Teodor Niżyński. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var playerPick:gamePick!
    var enemyPick:gamePick!
    @IBOutlet weak var whatEnemyPickedImage: UIImageView!
    @IBOutlet weak var resultText: UILabel!
    @IBOutlet weak var resultImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let randomNumber = Int(arc4random_uniform(3))
        print(randomNumber)
        if(randomNumber==0){enemyPick=gamePick.Paper}
        if(randomNumber==1){enemyPick=gamePick.Rock}
        if(randomNumber==2){enemyPick=gamePick.Scissors}
        print(String(enemyPick))
        whatEnemyPickedImage.image=UIImage(named: String(enemyPick))
        
        if(playerPick==enemyPick)
        {
            resultText.text="Remis!"
            resultImage.image=UIImage(named: "Draw")
        }
        else
        {
            if(playerPick==gamePick.Paper && enemyPick==gamePick.Rock){Win()}
            if(playerPick==gamePick.Paper && enemyPick==gamePick.Scissors){Lose()}
            if(playerPick==gamePick.Rock && enemyPick==gamePick.Paper){Lose()}
            if(playerPick==gamePick.Rock && enemyPick==gamePick.Scissors){Win()}
            if(playerPick==gamePick.Scissors && enemyPick==gamePick.Rock){Lose()}
            if(playerPick==gamePick.Scissors && enemyPick==gamePick.Paper){Win()}
        }
    }
    
    func Win()
    {
        resultText.text="Wygrałeś! Jesteś zwycięzcą"
        resultImage.image=UIImage(named: "Win")
    }
    func Lose()
    {
        resultText.text="Przegrałeś, przegrywie jeden :<"
        resultImage.image=UIImage(named: "Lose")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func rezult(){
        var randomNumber = Int(arc4random_uniform(3))
        print(randomNumber)
        
    }
}
