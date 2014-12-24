//
//  InterfaceController.swift
//  InspireMe WatchKit Extension
//
//  Created by Joey Tawadrous on 20/11/2014.
//  Copyright (c) 2014 Joey Tawadrous. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    
    @IBOutlet weak var quoteLabel: WKInterfaceLabel!
    
    var quotes = ["If opportunity doesn't knock, build a door.", "Whether you think you can or you cannot, your right.", "Pain is inevitable, suffering is optional."];
    
    var quoteIndex = 0;
    
    
    override init(context: AnyObject?) {
        super.init(context: context)
        
        self.quoteLabel.setText("Inspire Me!");
    }
    
    @IBAction func showMore()
    {
        self.quoteLabel.setText(quotes[quoteIndex]);
        quoteIndex = quoteIndex + 1;
    }
    
    
    @IBAction func favouritesTapped()
    {
        self.pushControllerWithName("Favourites", context: nil)
    }
}
