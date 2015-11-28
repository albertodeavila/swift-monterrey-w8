import UIKit

class QuesoController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{

    @IBOutlet weak var quesoPicker: UIPickerView!
    var tamañoPizza: String = ""
    var masaPizza: String = ""
    var quesoPizza: String = "Mozarrella"
    let quesosPizza: [String] = ["Mozarella", "Cheddar", "Parmesano", "Sin queso"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.quesoPicker.delegate = self
        self.quesoPicker.dataSource = self
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let ingredienteController = segue.destinationViewController as! IngredienteController
        ingredienteController.tamañoPizza = tamañoPizza
        ingredienteController.masaPizza = masaPizza
        ingredienteController.quesoPizza = quesoPizza
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return quesosPizza[row]
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return quesosPizza.count
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        quesoPizza = quesosPizza[row]
    }

}
