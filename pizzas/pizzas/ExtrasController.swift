import UIKit

class ExtrasController: UIViewController {

    @IBOutlet weak var confirmarPedido: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        print("Aqui")
        segue.destinationViewController as! FinController
    }
}
