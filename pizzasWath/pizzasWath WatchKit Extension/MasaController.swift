//
//  MasaController.swift
//  pizzasWath
//
//  Created by Alberto De Avila Hernandez on 28/11/15.
//  Copyright © 2015 Alberto De Avila Hernandez. All rights reserved.
//

import WatchKit
import Foundation


class MasaController: WKInterfaceController {

    @IBOutlet var masaPicker: WKInterfacePicker!
    let masasPizza: [String] = ["Delgada", "Crujiente", "Gruesa"]
    var masaPizzaSeleccionada: String = "Delgada"
    var pizza: Pizza = Pizza()
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        pizza = context as! Pizza
        
        let pickerItems: [WKPickerItem] = masasPizza.map {
            let pickerItem = WKPickerItem()
            pickerItem.caption = $0
            pickerItem.title = $0
            return pickerItem
        }
        masaPicker.setItems(pickerItems)
    }

    @IBAction func confirmarMasa() {
        pizza.masa = masaPizzaSeleccionada
        pushControllerWithName("pizzaMasa", context: pizza)
    }
    
    @IBAction func seleccionaMasaPizza(value: Int) {
        masaPizzaSeleccionada = masasPizza[value]
    }
    
    override func willActivate() {
        super.willActivate()
    }

    override func didDeactivate() {
        super.didDeactivate()
    }

}
