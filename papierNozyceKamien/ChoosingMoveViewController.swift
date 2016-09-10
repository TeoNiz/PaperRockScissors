//
//  ViewController.swift
//  papierNozyceKamien
//
//  Created by Teodor Niżyński on 29.08.2016.
//  Copyright © 2016 Teodor Niżyński. All rights reserved.
//

import UIKit

class ChoosingMoveViewController: UIViewController {
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var historyButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        let buttonsArray=[paperButton,rockButton,scissorsButton]
        for button in buttonsArray {
            button.imageView?.contentMode = .ScaleAspectFit
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func choosingPaperAction(sender: UIButton){
        
        var controller: ResultViewController
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("ResultViewController") as! ResultViewController
        
        // Set the two values to random numbers from 1 to 6
        //controller.firstValue = self.randomDiceValue()
        controller.playerPick=gamePick.Paper
        
        // Present the view Controller
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    @IBAction func choosingRockAction(sender: UIButton) {
        performSegueWithIdentifier("HalfAutoRock", sender: sender)
        
    }
    
    @IBAction func choosingScissorsAction(sender: UIButton) {
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(sender!.tag==1)
        {
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
}

