//
//  ResumenController.swift
//  pizzas
//
//  Created by Alberto De Avila Hernandez on 15/11/15.
//  Copyright © 2015 Alberto De Avila Hernandez. All rights reserved.
//

import UIKit

class ResumenController: UIViewController {

    var tamañoPizza: String = ""
    var masaPizza: String = ""
    var quesoPizza: String = ""
    var ingredientesPizza: [String] = []
    
    @IBOutlet weak var tamañoLabel: UILabel!
    @IBOutlet weak var masaLabel: UILabel!
    @IBOutlet weak var quesoLabel: UILabel!
    @IBOutlet weak var ingredientesLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        tamañoLabel.text = tamañoPizza
        masaLabel.text = masaPizza
        quesoLabel.text = quesoPizza
        ingredientesLabel.text = ingredientesPizza.joinWithSeparator("\n")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
