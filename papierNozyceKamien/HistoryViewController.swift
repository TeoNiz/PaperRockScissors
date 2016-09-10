//
//  HistoryViewController.swift
//  papierNozyceKamien
//
//  Created by Teodor Niżyński on 10.09.2016.
//  Copyright © 2016 Teodor Niżyński. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AllGameHistory.history.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("gamesHistory")!
        let singleGameHistory = AllGameHistory.history[indexPath.row]//self.allVillains[indexPath.row]
        
        // Set the name and image
        cell.textLabel?.text = "\(singleGameHistory.Result)"
        cell.imageView?.image = UIImage(named: "\(singleGameHistory.Result)")
        
        // If the cell has a detail label, we will put the evil scheme in.
        if let detailTextLabel = cell.detailTextLabel {
            detailTextLabel.text = "Player: \(singleGameHistory.PlayerChoose) Enemy: \(singleGameHistory.CPUChoose)"
        }
        
        return cell
    }
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool
        
    {
        return true
    }
}