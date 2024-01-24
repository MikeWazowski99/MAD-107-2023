import UIKit

var homework = ["Mad-105: 5", "Mad-107: 2", "DGM-105: 3"]

func HomeworkDue(complete: ([String]) -> Void) {
    complete(homework)
}

HomeworkDue { (work) in
    for i in work {
         print("\(i) Assignments are due")
    }
}
