//
//  ReplaceRootViewController.swift
//  Internalproject
//
//  Created by Kaleswara Rao Ravela on 04/09/18.
//  Copyright © 2018 Kaleswara Rao Ravela. All rights reserved.
//

import UIKit

let TransitionDuraton: TimeInterval = 0.3

class ReplaceRootViewController: UIStoryboardSegue {
    
    override func perform() {
        
        let destinationController = destination
        let window = UIApplication.shared.keyWindow;
        
        window!.rootViewController = destinationController
    }

}
