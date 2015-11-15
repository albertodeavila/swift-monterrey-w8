//
//  ViewController.swift
//  pizzas
//
//  Created by Alberto De Avila Hernandez on 15/11/15.
//  Copyright © 2015 Alberto De Avila Hernandez. All rights reserved.
//

import UIKit

class TamañoPizzaController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var tamañoPizza: UIPickerView!
    let tamañosPizza: [String] = ["Pequeña", "Mediana", "Grande"]
    var tamañoPizzaSeleccionado: String = "Pequeña"
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tamañoPizza.delegate = self
        self.tamañoPizza.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let masaController = segue.destinationViewController as! MasaController
        masaController.tamañoPizza = tamañoPizzaSeleccionado
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tamañosPizza[row]
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tamañosPizza.count
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        tamañoPizzaSeleccionado = tamañosPizza[row]
    }
    
    
    
}

