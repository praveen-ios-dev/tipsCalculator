//
//  InterfaceController.swift
//  tipsCalculator WatchKit Extension
//
//  Created by kumar praveen on 13/07/21.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var textField: WKInterfaceTextField!
    @IBOutlet weak var tenPercentLabel: WKInterfaceLabel!
    @IBOutlet weak var twentyPercentLabel: WKInterfaceLabel!
    @IBOutlet weak var thirtyPercentLabel: WKInterfaceLabel!
    @IBOutlet weak var errorlabel: WKInterfaceLabel!
    
    @IBAction func textfieldAction(_ value: NSString?) {
        errorlabel.setHidden(true)
        let stringText = value as String?
        if let values = stringText{
            guard let intValue = Int(values) else {
                tenPercentLabel.setText("")
                twentyPercentLabel.setText("")
                thirtyPercentLabel.setText("")
                errorlabel.setHidden(false)
                return
            }
            tenPercentLabel.setText("\(intValue*10 / 100)")
            twentyPercentLabel.setText("\(intValue*15 / 100)")
            thirtyPercentLabel.setText("\(intValue*20 / 100)")
        }
    }
    
    
    override func awake(withContext context: Any?) {
        // Configure interface objects here.
    }
    
    override func willActivate() {
        errorlabel.setHidden(true)
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }
    
    

}
