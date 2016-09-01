//
//  ViewController.swift
//  papierNozyceKamien
//
//  Created by Teodor Niżyński on 29.08.2016.
//  Copyright © 2016 Teodor Niżyński. All rights reserved.
//

import UIKit

class ChoosingMoveViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func choosingPaperAction(sender: UIButton){
        
        print("paper!")
        var controller: ResultViewController
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("ResultViewController") as! ResultViewController
        
        // Set the two values to random numbers from 1 to 6
        //controller.firstValue = self.randomDiceValue()
        controller.playerPick=gamePick.Paper
        
        // Present the view Controller
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    @IBAction func choosingRockAction(sender: UIButton) {
        performSegueWithIdentifier("HalfAutoRock", sender: self)
        
    }
    
    @IBAction func choosingScissorsAction(sender: UIButton) {
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let controller=segue.destinationViewController as! ResultViewController
        if(segue.identifier=="HalfAutoRock")
        {
            controller.playerPick=gamePick.Rock
        }
        if(segue.identifier=="AutoScissors")
        {
            controller.playerPick=gamePick.Scissors
        }
    }
}

