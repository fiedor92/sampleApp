//
//  InterfaceController.swift
//  sampleApp WatchKit Extension
//
//  Created by appacmp on 15/08/15.
//  Copyright (c) 2015 Maciej Fiedorowicz. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBOutlet weak var messageLabel: WKInterfaceLabel!

    @IBAction func buttonTapped() {
        WKInterfaceController.openParentApplication(["Name": "Maciej"], reply: { (reply, error) -> Void in
            if let responseMessage = reply["Message"] as? String {
                    println(responseMessage)
                self.messageLabel.setText(responseMessage)
                
            }
        })
    }
}
