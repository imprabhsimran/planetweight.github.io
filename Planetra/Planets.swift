//
//  Planets.swift
//  Planetra
//
//  Created by Prabh Simran Singh on 16/01/21.
//

import Foundation
struct Planets {
    let planetName = ["Mercury","Venus","Mars","Earth","Jupitar","Saturn","Uranus","Neptune","Moon","Pluto"]
    var calculatedWeight : Float = 0.0
    mutating func calculateWeight(finalWeight : Float,planet : String) {
        if planet == "Mercury"{
            calculatedWeight = finalWeight * 0.38
        }else if planet == "Venus"{
            calculatedWeight = finalWeight * 0.91
        }else if planet == "Mars"{
            calculatedWeight = finalWeight * 0.38
        }else if planet == "Earth"{
            calculatedWeight = finalWeight * 1
        }else if planet == "Jupitar"{
            calculatedWeight = finalWeight * 2.34
        }else if planet == "Saturn"{
            calculatedWeight = finalWeight * 1.06
        }else if planet == "Uranus"{
            calculatedWeight = finalWeight * 0.92
        }else if planet == "Neptune"{
            calculatedWeight = finalWeight * 1.19
        }else if planet == "Moon"{
            calculatedWeight = finalWeight * 0.166
        }else if planet == "Pluto"{
            calculatedWeight = finalWeight * 0.06
        }else{
            print("error")
        }
        print(calculatedWeight)
    }
}
