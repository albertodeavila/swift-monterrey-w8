import UIKit

class IngredienteController: UIViewController {
    
    var tamañoPizza: String = ""
    var masaPizza: String = ""
    var quesoPizza: String = ""
    var ingredientesPizza: [String] = []
    
    @IBOutlet weak var siguienteButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func seleccionaJamon(sender: UISwitch) {
        if(sender.on){
            ingredientesPizza.append("Jamon")
        }else{
            ingredientesPizza = ingredientesPizza.filter(){ $0 != "Jamon"}
        }
        habilitarBoton()
    }
    
    @IBAction func seleccionaPavo(sender: UISwitch) {
        if(sender.on){
            ingredientesPizza.append("Pavo")
        }else{
            ingredientesPizza = ingredientesPizza.filter(){ $0 != "Pavo"}
        }
        habilitarBoton()
    }
    
    @IBAction func seleccionaPepperoni(sender: UISwitch) {
        if(sender.on){
            ingredientesPizza.append("Pepperoni")
        }else{
            ingredientesPizza = ingredientesPizza.filter(){ $0 != "Pepperoni"}
        }
        habilitarBoton()
    }
    
    @IBAction func seleccionaSalchicha(sender: UISwitch) {
        if(sender.on){
            ingredientesPizza.append("Salchicha")
        }else{
            ingredientesPizza = ingredientesPizza.filter(){ $0 != "Salchicha"}
        }
        habilitarBoton()
    }
    
    @IBAction func seleccionaBacon(sender: UISwitch) {
        if(sender.on){
            ingredientesPizza.append("Bacon")
        }else{
            ingredientesPizza = ingredientesPizza.filter(){ $0 != "Bacon"}
        }
        habilitarBoton()
    }
    
    func habilitarBoton(){
        if(ingredientesPizza.count > 0){
            siguienteButton.enabled = true
        }else{
            siguienteButton.enabled = false
        }
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let resumenController = segue.destinationViewController as! ResumenController
        resumenController.tamañoPizza = tamañoPizza
        resumenController.masaPizza = masaPizza
        resumenController.quesoPizza = quesoPizza
        resumenController.ingredientesPizza = ingredientesPizza
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
   
}
