//
//  QuesoController.swift
//  pizzasWath
//
//  Created by Alberto De Avila Hernandez on 28/11/15.
//  Copyright © 2015 Alberto De Avila Hernandez. All rights reserved.
//

import WatchKit
import Foundation


class QuesoController: WKInterfaceController {

    var quesoPizza: String = "Mozarrella"
    let quesosPizza: [String] = ["Mozarella", "Cheddar", "Parmesano", "Sin queso"]
    var pizza: Pizza = Pizza()
    
    @IBOutlet var quesoPicker: WKInterfacePicker!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        pizza = context as! Pizza
        
        let pickerItems: [WKPickerItem] = quesosPizza.map {
            let pickerItem = WKPickerItem()
            pickerItem.caption = $0
            pickerItem.contentImage = WKImage(imageName: $0)
            return pickerItem
        }
        quesoPicker.setItems(pickerItems)
    }

    @IBAction func confirmarQueso() {
        pizza.queso = quesoPizza
        pushControllerWithName("pizzaQueso", context: pizza)
    }
    
    @IBAction func seleccionaQuesoPizza(value: Int) {
        quesoPizza = quesosPizza[value]
    }
    
    override func willActivate() {
        super.willActivate()
    }

    override func didDeactivate() {
        super.didDeactivate()
    }

}
