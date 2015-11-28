import UIKit

class MasaController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    var tamañoPizza: String = ""
    @IBOutlet weak var masa: UIPickerView!
    let masasPizza: [String] = ["Delgada", "Crujiente", "Gruesa"]
    var masaPizzaSeleccionada: String = "Delgada"
    override func viewDidLoad() {
        super.viewDidLoad()
        self.masa.delegate = self
        self.masa.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let quesoController = segue.destinationViewController as! QuesoController
        quesoController.tamañoPizza = tamañoPizza
        quesoController.masaPizza = masaPizzaSeleccionada
    }

    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return masasPizza[row]
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return masasPizza.count
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        masaPizzaSeleccionada = masasPizza[row]
    }

}
