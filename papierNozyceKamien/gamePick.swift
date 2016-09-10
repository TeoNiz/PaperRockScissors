//
//  gamePick.swift
//  papierNozyceKamien
//
//  Created by Teodor Niżyński on 01.09.2016.
//  Copyright © 2016 Teodor Niżyński. All rights reserved.
//

import Foundation

public enum gamePick{
    case Paper
    case Rock
    case Scissors
}

public enum gameResult
{
    case Win
    case Lose
    case Draw
}

public struct GameHistory {
    var PlayerChoose:gamePick
    var CPUChoose:gamePick
    var Result:gameResult
}

public class AllGameHistory{
    public static var history:[GameHistory] = []
    
    public static func addHistory(singleHistory:GameHistory)
    {
        history.append(singleHistory)
    }
}