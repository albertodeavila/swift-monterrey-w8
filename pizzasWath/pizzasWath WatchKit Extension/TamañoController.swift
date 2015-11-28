//
//  InterfaceController.swift
//  pizzasWath WatchKit Extension
//
//  Created by Alberto De Avila Hernandez on 28/11/15.
//  Copyright © 2015 Alberto De Avila Hernandez. All rights reserved.
//

import WatchKit
import Foundation


class TamañoController: WKInterfaceController {
    let tamañosPizza: [String] = ["Pequeña", "Mediana", "Grande"]
    var tamañoPizzaSeleccionado: String = "Pequeña"
    
    
    @IBOutlet var siguienteButton: WKInterfaceButton!
    @IBOutlet var tamañoPizzaPicker: WKInterfacePicker!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let pickerItems: [WKPickerItem] = tamañosPizza.map {
            let pickerItem = WKPickerItem()
            pickerItem.caption = $0
            pickerItem.title = $0
            return pickerItem
        }
        tamañoPizzaPicker.setItems(pickerItems)
    }

    @IBAction func confirmarTamaño() {
        let pizza = Pizza()
        pizza.tamaño = tamañoPizzaSeleccionado
        pushControllerWithName("pizzaTamaño", context: pizza)
    }
    
    @IBAction func seleccionaTamañoPizza(value: Int) {
        tamañoPizzaSeleccionado = tamañosPizza[value]
    }
    override func willActivate() {
        super.willActivate()
    }

    override func didDeactivate() {
        super.didDeactivate()
    }

}
