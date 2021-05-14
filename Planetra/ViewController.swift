//
//  ViewController.swift
//  Planetra
//
//  Created by Prabh Simran Singh on 16/01/21.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    var planets = Planets()
    var selectedPlanet : String = ""
   
    @IBOutlet weak var planetPicker: UIPickerView!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        planetPicker.dataSource = self
        planetPicker.delegate = self
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        planets.planetName.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedPlanet = planets.planetName[row]
        planets.calculateWeight(finalWeight: weightSlider.value, planet: selectedPlanet)
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        planets.planetName[row]
    }
    
    @IBAction func weightSlideChecker(_ sender: UISlider) {
        let weight = String(format: "%.1f", sender.value)
        weightLabel.text = "\(weight)Kg"
    }
    

    @IBAction func calculatePressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "resultVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "resultVC"{
        let destinationVC = segue.destination as! resultViewController
            destinationVC.weightResult = planets.calculatedWeight
        }
    }
}

