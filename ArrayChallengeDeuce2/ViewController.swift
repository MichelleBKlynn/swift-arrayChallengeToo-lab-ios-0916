//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // call function here (STEP TWO)
        
        deliLineDescription()
        
    }
    
    
    
    
    // Create your methods here. code here (STEP ONE)
    
    
    
    //
    //
    //
    //
    //
    // note: positionInLine should be a string, i.e. "First", "Second", etc.
    //
    //
    //
    //
    // IMPLEMENTING FUNCTION IN 1.
    //
    
    func addNameToDeliLine(name: String) -> String {
        
        switch name {
        case "Billy Crystal":
            
            deliLine.insert(name, atIndex:0)
            return "Welcome Billy! You can sit wherever you like."
        case "Meg Ryan":
            deliLine.insert(name, atIndex:0)
            return "Welcome Meg! You can sit wherever you like."
        default:
            deliLine.append(name)
            
        }
        
        switch deliLine.count {
        case 1:
            return "Welcome \(name), you're first in line!"
        default:
            return "Welcome \(name), you're number \(deliLine.count) in line."
        }
    }
    
    
    
    
    //
    // IMPLEMENTING FUNCTION IN 2.
    //
    //
    func nowServing() -> String {
        switch deliLine.count {
        case 0:
            return ("There is no one to be served")
            
        default:
            let name = deliLine.removeAtIndex(0)
            return "Now serving \(name)!"
        }
        
    }
    //
    //
    //
    //
    //
    //
    //  IMPLEMENTING FUNCTION IN 3.
    //
    //
    func deliLineDescription() -> String {
        switch deliLine.count {
        case 0:
            return "The line is currently empty."
            
        default:
            var result = "The line is:\n"
            for (index, name) in deliLine.enumerate() {
                
                switch index {
                case deliLine.count - 1:
                    result.appendContentsOf("\(index+1). \(name)")
                default:
                    result.appendContentsOf("\(index+1). \(name)\n")
                }
                
            }
            
            return result
        }
        
    }
    
    
}