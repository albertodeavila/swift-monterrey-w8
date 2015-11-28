import WatchKit
class Pizza : NSObject{
    var tamaño : String = ""
    var masa : String = ""
    var queso : String = ""
    var ingredientes : Array<String> = []
    var extras : Array<String> = []

    func toString()->String{
        return "Tamaño: \(tamaño)\nMasa: \(masa)\nQueso: \(queso)\nIngredientes:\(ingredientes.joinWithSeparator(","))"
    }
}
