//
//  ResumenController.swift
//  pizzasWath
//
//  Created by Alberto De Avila Hernandez on 28/11/15.
//  Copyright © 2015 Alberto De Avila Hernandez. All rights reserved.
//

import WatchKit
import Foundation


class ResumenController: WKInterfaceController {

    var pizza : Pizza = Pizza()
    @IBOutlet var resumenLabel: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let pizza = context as! Pizza
        print(pizza.toString())
        resumenLabel.setText(pizza.toString())
    }

    override func willActivate() {
        super.willActivate()
    }

    @IBAction func confirmarResumen() {
        pushControllerWithName("pizzaResumen", context: pizza)
    }
    
    override func didDeactivate() {
        super.didDeactivate()
    }

}
