import UIKit
import Foundation

var greeting = "Hello world this is my app that I will be submitting"

func function1() {
    let red = 25
    let blue = 15
    let green = 35
    
    let choice = 2
    var score = 0
    
    if choice == 1 {
        score += red
        print("You chose the red path where you will get 25 points for choosing it")
    }
    
    else if choice == 2 {
        score += blue
        print("You chose the blue path where you will get 15 points for choosing it")
    }
    
    else if choice == 3 {
        score += green
        print("You chose the green path where you will get 35 points for choosing it")
    }
    
    else {
        print("Please choose a number from 1-3")
    }
}

var drink = "coffee"

drink = "water"

print(drink)

print(function1())
