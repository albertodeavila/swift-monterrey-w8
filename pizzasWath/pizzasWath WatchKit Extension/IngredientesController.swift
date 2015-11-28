//
//  IngredientesController.swift
//  pizzasWath
//
//  Created by Alberto De Avila Hernandez on 28/11/15.
//  Copyright © 2015 Alberto De Avila Hernandez. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesController: WKInterfaceController {
    var pizza: Pizza = Pizza()
    var ingredientesPizza: [String] = []

    @IBOutlet var siguienteButton: WKInterfaceButton!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        pizza = context as! Pizza
    }

    override func willActivate() {
        super.willActivate()
    }
    
    @IBAction func agregarBacon(seleccionado: Bool) {
        agregarIngrediente("Bacon", seleccionado: seleccionado)
    }
    
    @IBAction func agregarJamón(seleccionado: Bool) {
        agregarIngrediente("Jamón", seleccionado: seleccionado)
    }
    
    @IBAction func agregarPiña(seleccionado: Bool) {
        agregarIngrediente("Piña", seleccionado: seleccionado)
    }
    
    @IBAction func agregarCebolla(seleccionado: Bool) {
        agregarIngrediente("Cebolla", seleccionado: seleccionado)
    }
    
    @IBAction func agregarPimiento(seleccionado: Bool) {
        agregarIngrediente("Pimiento", seleccionado: seleccionado)
    }
    
    func agregarIngrediente(ingrediente: String, seleccionado: Bool){
        if(seleccionado){
            ingredientesPizza.append(ingrediente)
        }else{
            ingredientesPizza = ingredientesPizza.filter(){ $0 != ingrediente}
        }
        habilitarBoton()
    }
    
    func habilitarBoton(){
        if(ingredientesPizza.count > 0){
            siguienteButton.setEnabled(true)
        }else{
            siguienteButton.setEnabled(false)
        }
    }
    
    @IBAction func confirmarIngredientes() {
        pizza.ingredientes = ingredientesPizza
        pushControllerWithName("pizzaIngredientes", context: pizza)
    }
    
    override func didDeactivate() {
        super.didDeactivate()
    }

}
