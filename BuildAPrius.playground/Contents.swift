import UIKit

var greeting = "Hello, playground"

 
enum priusColor {
    case Red
    case Blue
    case Black
    case White
}

enum priusModel {
    case PriusLE
    case PriusLE_AWD
    case PriusXLE
    case PriusXLE_AWD
}

enum priusPackage {
    case None
    case Audio_MultiMedia
    case Digital_Key
    case Everything
}

enum priusAcc {
    case Dog_Car_Harness
    case None
    case Emergency_Kit
    case Mud_Guards
}

struct PriusCar {
    let color: priusColor
    let model: priusModel
    let engine = "2.0L 4-Cyl Gas/Electric Hybrid Engine"
    let package: priusPackage
    let acc: priusAcc
}

var car1: [PriusCar] = [
    PriusCar(color: .Red, model: .PriusLE, package: .None, acc: .None),
    PriusCar(color: .Blue, model: .PriusXLE, package: .Audio_MultiMedia, acc: .Mud_Guards),
    PriusCar(color: .Black, model: .PriusLE_AWD, package: .Digital_Key, acc: .Dog_Car_Harness),
    PriusCar(color: .White, model: .PriusXLE_AWD, package: .Everything, acc: .Emergency_Kit)
]

func displayPrius() {
    print("Hello welcome to Prius please have a look at our current vehicles.")
    
    for (index, item) in car1.enumerated() {
        print("\(index + 1). Model: \(item.model) - Color: \(item.color) - Package: \(item.package) - Accesories: \(item.acc)\n")
    }
}

displayPrius()
//
//struct Package{
//    var package1 = "Audio Multi-Media"
//    var package2 = "Digital Key"
//    var package3 = "Everything"
//}
//
//struct Acc{
//    var dog: String
//}
