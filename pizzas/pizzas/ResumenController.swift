import UIKit

class ResumenController: UIViewController {

    var tamañoPizza: String = ""
    var masaPizza: String = ""
    var quesoPizza: String = ""
    var ingredientesPizza: [String] = []
    
    @IBOutlet weak var confirmarButton: UIButton!
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
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        segue.destinationViewController as! ExtrasController
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
